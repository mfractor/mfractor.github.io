## Fix Declarative References

*Configuration Id: com.mfractor.android.analysis.declarative_reference.fix*

Replaces misused declarative resource references with an id reference.

## Apply Required Value

*Configuration Id: com.mfractor.android.analysis.exact_value.fix*

Replaces an attributes value with the required value for xml element. For example, 'xmlns:android' must always be 'http://schemas.android.com/apk/res/android'.

## Fix Mispelt Resource Usages

*Configuration Id: com.mfractor.android.analysis.mispelt_resource_usage.fix*

Replaces unresolvable resource usages with an auto-suggested value based on the resources available in the project or its references.

## Add Required Attributes

*Configuration Id: com.mfractor.android.analysis.missing_attributes.fix*

Adds any missing required attributes and their default values to an xml node.

## Fix 9-patch drawable references

*Configuration Id: com.mfractor.android.analysis.drawable_nine_patch_reference.fix*

Replaces a nine patch drawable reference that includes the '.9' suffix with a reference that excludes the '.9' suffix.

## Fix Flags

*Configuration Id: com.mfractor.android.analysis.valid_flags.fix*

Replaces a mispelt flag with an auto-corrected suggestion or suggests from a list of valid keywords.

## Fix Keywords

*Configuration Id: com.mfractor.android.analysis.valid_keyword.fix*

Replaces a mispelt keyword with an auto-corrected suggestion or suggests from a list of valid keywords.

## Fix Value Format

*Configuration Id: com.mfractor.android.analysis.value_format.fix*

Fixes typeos for inline values such as dimensions, color or floats.
