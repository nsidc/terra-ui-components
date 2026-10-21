---
meta:
    title: NSIDC Data Access
    description: NSIDC-specific examples of data access and subsetting
---
## ATL03 v007

### Data access component

* Using a filename search (e.g., `ATL03_2018101`) narrows the
  results, but then using the Python script fails - no granules are downloaded.

```html:preview
<terra-data-access short-name="ATL03" version="007"></terra-data-access>
```

### Data Subsetter component

```html:preview
<terra-data-subsetter short-name="ATL03" version="007"></terra-data-subsetter>
```

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

## NSIDC-0051 v2

### Data access component

```html:preview
<terra-data-access short-name="NSIDC-0051" version="2"></terra-data-access>
```

* Spatial and temporal filtering appears to work
* Filename search filters listed results (e.g.,
  `NSIDC0051_SEAICE_PS_N25km_19781027`) but Python download script does not
  work with result (0 files downloaded).

### Data Subsetter component

```html:preview
<terra-data-subsetter short-name="NSIDC-0051" version="2"></terra-data-subsetter>
```

## SPL3SMP_E v006

### Data access component

```html:preview
<terra-data-access short-name="SPL3SMP_E" version="006"></terra-data-access>
```

### Data Subsetter component

```html:preview
<terra-data-subsetter short-name="SPL3SMP_E" version="006"></terra-data-subsetter>
```

## HMA_DEM8m_MOS v001

### Data access component

```html:preview
<terra-data-access short-name="HMA_DEM8m_MOS" version="001"></terra-data-access>
```

### Data Subsetter component

```html:preview
<terra-data-subsetter short-name="HMA_DEM8m_MOS" version="001"></terra-data-subsetter>
```

## MOD10A1 v0061

### Data access component

```html:preview
<terra-data-access short-name="MOD10A1" version="0061"></terra-data-access>
```

### Data Subsetter component

```html:preview
<terra-data-subsetter short-name="MOD10A1" version="0061"></terra-data-subsetter>
```

## ATL13 v007

### Data access component

```html:preview
<terra-data-access short-name="ATL13" version="007"></terra-data-access>
```

### Data Subsetter component

```html:preview
<terra-data-subsetter short-name="ATL13" version="007"></terra-data-subsetter>
```

## ATL06 v007

### Data access component

```html:preview
<terra-data-access short-name="ATL06" version="007"></terra-data-access>
```

### Data Subsetter component

```html:preview
<terra-data-subsetter short-name="ATL06" version="007"></terra-data-subsetter>
```

## SPL3SMP v009

### Data access component

```html:preview
<terra-data-access short-name="SPL3SMP" version="009"></terra-data-access>
```

### Data Subsetter component

```html:preview
<terra-data-subsetter short-name="SPL3SMP" version="009"></terra-data-subsetter>
```

## ATL24 v002

### Data access component

```html:preview
<terra-data-access short-name="ATL24" version="002"></terra-data-access>
```

### Data Subsetter component

```html:preview
<terra-data-subsetter short-name="ATL24" version="002"></terra-data-subsetter>
```

## NSIDC-0731 v5 (Multi-file granule example)

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

## ILVGH2 v001 (Spatial coverage: Arctic and Antarctica)

### Data access component

```html:preview
<terra-data-access short-name="ILVGH2" version="001"></terra-data-access>
```

### Data Subsetter component

```html:preview
<terra-data-subsetter short-name="ILVGH2" version="001"></terra-data-subsetter>
```

## IRARES1B v001 (Smaller spatial coverage (eg. not global))

### Data access component

```html:preview
<terra-data-access short-name="IRARES1B" version="001"></terra-data-access>
```

### Data Subsetter component

```html:preview
<terra-data-subsetter short-name="IRARES1B" version="001"></terra-data-subsetter>
```

## SNEX20_QSI_SD_3m v1 (Multiple temporal ranges)

### Data access component

```html:preview
<terra-data-access short-name="SNEX20_QSI_SD_3m" version="1"></terra-data-access>
```

### Data Subsetter component

```html:preview
<terra-data-subsetter short-name="SNEX20_QSI_SD_3m" version="1"></terra-data-subsetter>
```

##  GLAH03 v033 (Doesn’t have spatial information so currently doesn’t work with the NSIDC DAT)

### Data access component

```html:preview
<terra-data-access short-name="GLAH03" version="033"></terra-data-access>
```

* Using a filename search (e.g., `GLAH03_033_1102_001_0083`) narrows the
  results, but then using the Python script fails - no granules are downloaded.
* Temporal filter appears to work and python script works with it.
* Spatial filter is avialable, attempting to set the spatial filter will result
  in no granules found. Can we set this up to exclude the spatial filter option
  when no spatial metadata is available?

### Data Subsetter component

```html:preview
<terra-data-subsetter short-name="GLAH03" version="033"></terra-data-subsetter>
```

* Subsetter does not appear for this dataset - must not have Harmony support.
