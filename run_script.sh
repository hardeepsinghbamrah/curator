ENTRYPOINT (sed -i 's/change_elasticsearch_host/'"$ELASTICSEARCH_HOST"'/g' curator.yaml) && (sed -i 's/change_elasticsearch_port/'"$ELASTICSEARCH_PORT"'/g' curator.yaml) && (sed -i 's/change_pattern/'"$PATTERN"'/g' delete.yaml) && (sed -i 's/change_unitcount/'"$UNITCOUNT"'/g' delete.yaml) && (curator --config curator.yaml delete_indices.yaml)
