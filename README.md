# apply-product-configs

This action currently validates products. When the Prequel Github action is deprecated, this action will upsert products into Prequel. 

## Inputs

## `host`

**Required** The host uri (with scheme) where the Prequel API can be accessed

## `api_key`

**Required** The Prequel API key that this action should utilize. 

## `mode`

either import or export, **Default**: export

## `dir`

Filepath or glob matching product configs to upsert, **Default**: prequel/products/*


## Example usage

```yaml
- name: Apply Models
uses: prequel-co/apply-product-configs@v1
with:
  host: https://api.prequel.co/
  api_key: ${{ secrets.PREQUEL_API_KEY }}
  mode: export
  dir: exports/products/*.json
```

