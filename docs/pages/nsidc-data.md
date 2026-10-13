---
meta:
    title: NSIDC Data Access
    description: NSIDC-specific examples of data access and subsetting
---

## ATL08 v007


### Data access component

For the most part, ATL08 appears to work as expected. However, the data access
component does not correctly show filesize.

```html:preview
<terra-data-access short-name="ATL08" version="007"></terra-data-access>
```

### Data Subsetter component

```html:preview
<terra-data-subsetter short-name="ATL08" version="007"></terra-data-subsetter>
```

## NSIDC-0731 v5

### Data access component

NSIDC-0731 is a dataset with multi-file granules. This does not appear to work
in the data access component very well:

* Displayed granule names map to `.dbf` and `.jpg` files, but e.g., `.shp`
  appears to be missing
* Most granules show a size of 0.
* Using the Python Script download option does not appear to work despite a run
  telling you that it was successful.

```html:preview
<terra-data-access short-name="NSIDC-0731" version="5"></terra-data-access>
```

### Data Subsetter component

NSIDC-0731 subsetter appears to be equivalent in functionality to the data
access component (no "Transform Data" tab)

```html:preview
<terra-data-subsetter short-name="NSIDC-0731" version="5"></terra-data-subsetter>
```
