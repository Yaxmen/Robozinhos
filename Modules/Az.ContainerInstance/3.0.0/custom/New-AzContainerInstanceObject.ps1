
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create a in-memory object for Container
.Description
Create a in-memory object for Container

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Models.Api20210901.Container
.Link
https://docs.microsoft.com/powershell/module/az.ContainerInstance/new-AzContainerInstanceObject
#>
function New-AzContainerInstanceObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Models.Api20210901.Container')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="The commands to execute within the container instance in exec form.")]
        [string[]]
        $Command,
        [Parameter(HelpMessage="The environment variables to set in the container instance.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Models.Api20210901.IEnvironmentVariable[]]
        $EnvironmentVariable,
        [Parameter(Mandatory, HelpMessage="The name of the image used to create the container instance.")]
        [string]
        $Image,
        [Parameter(HelpMessage="The CPU limit of this container instance.")]
        [double]
        $LimitCpu,
        [Parameter(HelpMessage="The memory limit in GB of this container instance.")]
        [double]
        $LimitMemoryInGb,
        [Parameter(HelpMessage="The count of the GPU resource.")]
        [int]
        $LimitsGpuCount,
        [Parameter(HelpMessage="The SKU of the GPU resource.")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Support.GpuSku])]
        [string]
        $LimitsGpuSku,
        [Parameter(HelpMessage="The commands to execute within the container.")]
        [string[]]
        $LivenessProbeExecCommand,
        [Parameter(HelpMessage="The failure threshold.")]
        [int]
        $LivenessProbeFailureThreshold,
        [Parameter(HelpMessage="The HTTP headers for liveness probe.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Models.Api20210901.IHttpHeader[]]
        $LivenessProbeHttpGetHttpHeader,
        [Parameter(HelpMessage="The path to probe.")]
        [string]
        $LivenessProbeHttpGetPath,
        [Parameter(HelpMessage="The port number to probe.")]
        [int]
        $LivenessProbeHttpGetPort,
        [Parameter(HelpMessage="The scheme.")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Support.Scheme])]
        [string]
        $LivenessProbeHttpGetScheme,
        [Parameter(HelpMessage="The initial delay seconds.")]
        [int]
        $LivenessProbeInitialDelaySecond,
        [Parameter(HelpMessage="The period seconds.")]
        [int]
        $LivenessProbePeriodSecond,
        [Parameter(HelpMessage="The success threshold.")]
        [int]
        $LivenessProbeSuccessThreshold,
        [Parameter(HelpMessage="The timeout seconds.")]
        [int]
        $LivenessProbeTimeoutSecond,
        [Parameter(Mandatory, HelpMessage="The user-provided name of the container instance.")]
        [string]
        $Name,
        [Parameter(HelpMessage="The exposed ports on the container instance.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Models.Api20210901.IContainerPort[]]
        $Port,
        [Parameter(HelpMessage="The commands to execute within the container.")]
        [string[]]
        $ReadinessProbeExecCommand,
        [Parameter(HelpMessage="The failure threshold.")]
        [int]
        $ReadinessProbeFailureThreshold,
        [Parameter(HelpMessage="The HTTP headers for readiness probe.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Models.Api20210901.IHttpHeader[]]
        $ReadinessProbeHttpGetHttpHeader,
        [Parameter(HelpMessage="The path to probe.")]
        [string]
        $ReadinessProbeHttpGetPath,
        [Parameter(HelpMessage="The port number to probe.")]
        [int]
        $ReadinessProbeHttpGetPort,
        [Parameter(HelpMessage="The scheme.")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Support.Scheme])]
        [string]
        $ReadinessProbeHttpGetScheme,
        [Parameter(HelpMessage="The initial delay seconds.")]
        [int]
        $ReadinessProbeInitialDelaySecond,
        [Parameter(HelpMessage="The period seconds.")]
        [int]
        $ReadinessProbePeriodSecond,
        [Parameter(HelpMessage="The success threshold.")]
        [int]
        $ReadinessProbeSuccessThreshold,
        [Parameter(HelpMessage="The timeout seconds.")]
        [int]
        $ReadinessProbeTimeoutSecond,
        [Parameter(HelpMessage="The CPU request of this container instance.")]
        [double]
        $RequestCpu,
        [Parameter(HelpMessage="The memory request in GB of this container instance.")]
        [double]
        $RequestMemoryInGb,
        [Parameter(HelpMessage="The count of the GPU resource.")]
        [int]
        $RequestsGpuCount,
        [Parameter(HelpMessage="The SKU of the GPU resource.")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Support.GpuSku])]
        [string]
        $RequestsGpuSku,
        [Parameter(HelpMessage="The volume mounts available to the container instance.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Models.Api20210901.IVolumeMount[]]
        $VolumeMount
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.ContainerInstance.Models.Api20210901.Container]::New()

        $Object.Command = $Command
        $Object.EnvironmentVariable = $EnvironmentVariable
        $Object.Image = $Image
        $Object.LimitCpu = $LimitCpu
        $Object.LimitMemoryInGb = $LimitMemoryInGb
        $Object.LimitsGpuCount = $LimitsGpuCount
        $Object.LimitsGpuSku = $LimitsGpuSku
        $Object.LivenessProbeExecCommand = $LivenessProbeExecCommand
        $Object.LivenessProbeFailureThreshold = $LivenessProbeFailureThreshold
        $Object.LivenessProbeHttpGetHttpHeader = $LivenessProbeHttpGetHttpHeader
        $Object.LivenessProbeHttpGetPath = $LivenessProbeHttpGetPath
        $Object.LivenessProbeHttpGetPort = $LivenessProbeHttpGetPort
        $Object.LivenessProbeHttpGetScheme = $LivenessProbeHttpGetScheme
        $Object.LivenessProbeInitialDelaySecond = $LivenessProbeInitialDelaySecond
        $Object.LivenessProbePeriodSecond = $LivenessProbePeriodSecond
        $Object.LivenessProbeSuccessThreshold = $LivenessProbeSuccessThreshold
        $Object.LivenessProbeTimeoutSecond = $LivenessProbeTimeoutSecond
        $Object.Name = $Name
        if(!$PSBoundParameters.ContainsKey("Port"))
        {
            $Port = New-AzContainerInstancePortObject -Port 80
        }
        $Object.Port = $Port
        $Object.ReadinessProbeExecCommand = $ReadinessProbeExecCommand
        $Object.ReadinessProbeFailureThreshold = $ReadinessProbeFailureThreshold
        $Object.ReadinessProbeHttpGetHttpHeader = $ReadinessProbeHttpGetHttpHeader
        $Object.ReadinessProbeHttpGetPath = $ReadinessProbeHttpGetPath
        $Object.ReadinessProbeHttpGetPort = $ReadinessProbeHttpGetPort
        $Object.ReadinessProbeHttpGetScheme = $ReadinessProbeHttpGetScheme
        $Object.ReadinessProbeInitialDelaySecond = $ReadinessProbeInitialDelaySecond
        $Object.ReadinessProbePeriodSecond = $ReadinessProbePeriodSecond
        $Object.ReadinessProbeSuccessThreshold = $ReadinessProbeSuccessThreshold
        $Object.ReadinessProbeTimeoutSecond = $ReadinessProbeTimeoutSecond
        if(!$PSBoundParameters.ContainsKey("RequestCpu"))
        {
            $RequestCpu = 1.0
        }
        $Object.RequestCpu = $RequestCpu
        if(!$PSBoundParameters.ContainsKey("RequestMemoryInGb"))
        {
            $RequestMemoryInGb = 1.5
        }
        $Object.RequestMemoryInGb = $RequestMemoryInGb
        $Object.RequestsGpuCount = $RequestsGpuCount
        $Object.RequestsGpuSku = $RequestsGpuSku
        $Object.VolumeMount = $VolumeMount
        return $Object
    }
}


# SIG # Begin signature block
# MIIjjwYJKoZIhvcNAQcCoIIjgDCCI3wCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCejTbeypWYSn5z
# IvwzHlo3S9rmg2qRd21XxnoOpoFm+qCCDYEwggX/MIID56ADAgECAhMzAAACUosz
# qviV8znbAAAAAAJSMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjEwOTAyMTgzMjU5WhcNMjIwOTAxMTgzMjU5WjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQDQ5M+Ps/X7BNuv5B/0I6uoDwj0NJOo1KrVQqO7ggRXccklyTrWL4xMShjIou2I
# sbYnF67wXzVAq5Om4oe+LfzSDOzjcb6ms00gBo0OQaqwQ1BijyJ7NvDf80I1fW9O
# L76Kt0Wpc2zrGhzcHdb7upPrvxvSNNUvxK3sgw7YTt31410vpEp8yfBEl/hd8ZzA
# v47DCgJ5j1zm295s1RVZHNp6MoiQFVOECm4AwK2l28i+YER1JO4IplTH44uvzX9o
# RnJHaMvWzZEpozPy4jNO2DDqbcNs4zh7AWMhE1PWFVA+CHI/En5nASvCvLmuR/t8
# q4bc8XR8QIZJQSp+2U6m2ldNAgMBAAGjggF+MIIBejAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUNZJaEUGL2Guwt7ZOAu4efEYXedEw
# UAYDVR0RBEkwR6RFMEMxKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1
# ZXJ0byBSaWNvMRYwFAYDVQQFEw0yMzAwMTIrNDY3NTk3MB8GA1UdIwQYMBaAFEhu
# ZOVQBdOCqhc3NyK1bajKdQKVMFQGA1UdHwRNMEswSaBHoEWGQ2h0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY0NvZFNpZ1BDQTIwMTFfMjAxMS0w
# Ny0wOC5jcmwwYQYIKwYBBQUHAQEEVTBTMFEGCCsGAQUFBzAChkVodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY0NvZFNpZ1BDQTIwMTFfMjAx
# MS0wNy0wOC5jcnQwDAYDVR0TAQH/BAIwADANBgkqhkiG9w0BAQsFAAOCAgEAFkk3
# uSxkTEBh1NtAl7BivIEsAWdgX1qZ+EdZMYbQKasY6IhSLXRMxF1B3OKdR9K/kccp
# kvNcGl8D7YyYS4mhCUMBR+VLrg3f8PUj38A9V5aiY2/Jok7WZFOAmjPRNNGnyeg7
# l0lTiThFqE+2aOs6+heegqAdelGgNJKRHLWRuhGKuLIw5lkgx9Ky+QvZrn/Ddi8u
# TIgWKp+MGG8xY6PBvvjgt9jQShlnPrZ3UY8Bvwy6rynhXBaV0V0TTL0gEx7eh/K1
# o8Miaru6s/7FyqOLeUS4vTHh9TgBL5DtxCYurXbSBVtL1Fj44+Od/6cmC9mmvrti
# yG709Y3Rd3YdJj2f3GJq7Y7KdWq0QYhatKhBeg4fxjhg0yut2g6aM1mxjNPrE48z
# 6HWCNGu9gMK5ZudldRw4a45Z06Aoktof0CqOyTErvq0YjoE4Xpa0+87T/PVUXNqf
# 7Y+qSU7+9LtLQuMYR4w3cSPjuNusvLf9gBnch5RqM7kaDtYWDgLyB42EfsxeMqwK
# WwA+TVi0HrWRqfSx2olbE56hJcEkMjOSKz3sRuupFCX3UroyYf52L+2iVTrda8XW
# esPG62Mnn3T8AuLfzeJFuAbfOSERx7IFZO92UPoXE1uEjL5skl1yTZB3MubgOA4F
# 8KoRNhviFAEST+nG8c8uIsbZeb08SeYQMqjVEmkwggd6MIIFYqADAgECAgphDpDS
# AAAAAAADMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0
# ZSBBdXRob3JpdHkgMjAxMTAeFw0xMTA3MDgyMDU5MDlaFw0yNjA3MDgyMTA5MDla
# MH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMT
# H01pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTEwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQCr8PpyEBwurdhuqoIQTTS68rZYIZ9CGypr6VpQqrgG
# OBoESbp/wwwe3TdrxhLYC/A4wpkGsMg51QEUMULTiQ15ZId+lGAkbK+eSZzpaF7S
# 35tTsgosw6/ZqSuuegmv15ZZymAaBelmdugyUiYSL+erCFDPs0S3XdjELgN1q2jz
# y23zOlyhFvRGuuA4ZKxuZDV4pqBjDy3TQJP4494HDdVceaVJKecNvqATd76UPe/7
# 4ytaEB9NViiienLgEjq3SV7Y7e1DkYPZe7J7hhvZPrGMXeiJT4Qa8qEvWeSQOy2u
# M1jFtz7+MtOzAz2xsq+SOH7SnYAs9U5WkSE1JcM5bmR/U7qcD60ZI4TL9LoDho33
# X/DQUr+MlIe8wCF0JV8YKLbMJyg4JZg5SjbPfLGSrhwjp6lm7GEfauEoSZ1fiOIl
# XdMhSz5SxLVXPyQD8NF6Wy/VI+NwXQ9RRnez+ADhvKwCgl/bwBWzvRvUVUvnOaEP
# 6SNJvBi4RHxF5MHDcnrgcuck379GmcXvwhxX24ON7E1JMKerjt/sW5+v/N2wZuLB
# l4F77dbtS+dJKacTKKanfWeA5opieF+yL4TXV5xcv3coKPHtbcMojyyPQDdPweGF
# RInECUzF1KVDL3SV9274eCBYLBNdYJWaPk8zhNqwiBfenk70lrC8RqBsmNLg1oiM
# CwIDAQABo4IB7TCCAekwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFEhuZOVQ
# BdOCqhc3NyK1bajKdQKVMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1Ud
# DwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFHItOgIxkEO5FAVO
# 4eqnxzHRI4k0MFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwubWljcm9zb2Z0
# LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcmwwXgYIKwYBBQUHAQEEUjBQME4GCCsGAQUFBzAChkJodHRwOi8vd3d3Lm1p
# Y3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcnQwgZ8GA1UdIASBlzCBlDCBkQYJKwYBBAGCNy4DMIGDMD8GCCsGAQUFBwIB
# FjNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2RvY3MvcHJpbWFyeWNw
# cy5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABlAGcAYQBsAF8AcABvAGwAaQBjAHkA
# XwBzAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJKoZIhvcNAQELBQADggIBAGfyhqWY
# 4FR5Gi7T2HRnIpsLlhHhY5KZQpZ90nkMkMFlXy4sPvjDctFtg/6+P+gKyju/R6mj
# 82nbY78iNaWXXWWEkH2LRlBV2AySfNIaSxzzPEKLUtCw/WvjPgcuKZvmPRul1LUd
# d5Q54ulkyUQ9eHoj8xN9ppB0g430yyYCRirCihC7pKkFDJvtaPpoLpWgKj8qa1hJ
# Yx8JaW5amJbkg/TAj/NGK978O9C9Ne9uJa7lryft0N3zDq+ZKJeYTQ49C/IIidYf
# wzIY4vDFLc5bnrRJOQrGCsLGra7lstnbFYhRRVg4MnEnGn+x9Cf43iw6IGmYslmJ
# aG5vp7d0w0AFBqYBKig+gj8TTWYLwLNN9eGPfxxvFX1Fp3blQCplo8NdUmKGwx1j
# NpeG39rz+PIWoZon4c2ll9DuXWNB41sHnIc+BncG0QaxdR8UvmFhtfDcxhsEvt9B
# xw4o7t5lL+yX9qFcltgA1qFGvVnzl6UJS0gQmYAf0AApxbGbpT9Fdx41xtKiop96
# eiL6SJUfq/tHI4D1nvi/a7dLl+LrdXga7Oo3mXkYS//WsyNodeav+vyL6wuA6mk7
# r/ww7QRMjt/fdW1jkT3RnVZOT7+AVyKheBEyIXrvQQqxP/uozKRdwaGIm1dxVk5I
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIVZDCCFWACAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAlKLM6r4lfM52wAAAAACUjAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgaVjkW+Sf
# HWptEs4+plNazNyCHIuRPOysITQIGT+E6b8wQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQAV410BMH3zCLu3Fw+H8suWgSUenN3m6oj5EPzQh44+
# UslsAoaKip95ruf6MuC/Hw6QM9z1LafvjZK5QQmtKLWD3rUJEwD1Q7EP588+hXz2
# XzUb2rQG2Gc5KQ62qPlNu8f5vWfUyXTPytg4fKA5YOgaBScRgpNIy6byfuGVDwd8
# daizvU/aST7d+SKfOsh4a4bqjOa3WpU2cEanHA0nwIzgmOAI/Krq6LnqShv0KD5O
# lvoBDjNklKbfkdqaeoX481ePwCbeA7qkXfBAqM2I5zoUGH0WnyGPROf0QSmcs8sd
# y2VXDAwPhg1xJTMnOTKG/21PceT8GP8pKcWSVtJVkJZZoYIS7jCCEuoGCisGAQQB
# gjcDAwExghLaMIIS1gYJKoZIhvcNAQcCoIISxzCCEsMCAQMxDzANBglghkgBZQME
# AgEFADCCAVUGCyqGSIb3DQEJEAEEoIIBRASCAUAwggE8AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIIAA1TRUa38/es4eV74/eeznW4eroxVP2y+0TDIt
# YMaLAgZhk98MN9UYEzIwMjExMjAyMTAwNDE5LjQ3M1owBIACAfSggdSkgdEwgc4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1p
# Y3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjo0RDJGLUUzREQtQkVFRjElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCDkEwggT1MIID3aADAgECAhMzAAABX8OuZVblU1jsAAAA
# AAFfMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIxMDExNDE5MDIxOVoXDTIyMDQxMTE5MDIxOVowgc4xCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVy
# YXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjo0RDJG
# LUUzREQtQkVFRjElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vydmlj
# ZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALw9efmC2WQ9uaaw7k4g
# xHSSCEoJLk22FTAaF8jYbAMkQC6DQF0WPnIheLM1ERTuQ9FWbglf0mXbDd2KjezR
# Nlz53ycJIReiGUQOnw5vd4TgjLUxL17g3K0MP2nNhY/LyP98Ml/40X905egDbiIn
# dZdtHiDb1xfY17a7v1j9o3muc+MCgFt9fO+U4CDNUpMMMQJFr/9QlU4YdJawjbyK
# fK3Ltvqfq3lvgK0/HphiDtX5ch3beGNBKowKSTXhft8pwuXQProutWgB5PZmAN8X
# ZhACo4jWi/a0zgAJJcBqoXvS6InrWcH/Eqi/qVaj8Vs56/Z/6kaYZZu/1mSzLn5E
# ALMCAwEAAaOCARswggEXMB0GA1UdDgQWBBQl7OnTlc0rgZ7Fd7qlDFguYTU49TAf
# BgNVHSMEGDAWgBTVYzpcijGQ80N7fEYbxTNoWoVtVTBWBgNVHR8ETzBNMEugSaBH
# hkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNU
# aW1TdGFQQ0FfMjAxMC0wNy0wMS5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUF
# BzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1RpbVN0
# YVBDQV8yMDEwLTA3LTAxLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsG
# AQUFBwMIMA0GCSqGSIb3DQEBCwUAA4IBAQAOgtfZLJYSbsE3W73nd0hLnqQqHSFl
# 2spHxzeXxM4uJT2uAVk/SLVzzjvZemUDBeOedKeXG8hctprpoQMpU3gbsNUnUaDe
# sDcmR+eELCwYa+VBkUCqsIGJmQlDwuDwNa67kyCEPyPW59Yu2w/djNrwNWSjtuRw
# fUFoDkjYyDjnXD0josi67qxJgW8rRqjl9a62hGzlzgE+aVLTT5IhK5z2X62Lph8j
# 9f4XjtCPnyeFKFmgBWHPY1HbbjUHfg91StCLxueH2LjZoQETWOJ+pxElicXwVP5B
# 0wlWkiauwug3rTKnDb5WKUb2llsnQgaegV+MQjMI7K6v+spvsMgRjPlhMIIGcTCC
# BFmgAwIBAgIKYQmBKgAAAAAAAjANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMC
# VVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNV
# BAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJv
# b3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIwMTAwHhcNMTAwNzAxMjEzNjU1WhcN
# MjUwNzAxMjE0NjU1WjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3Rv
# bjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0
# aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDCCASIw
# DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKkdDbx3EYo6IOz8E5f1+n9plGt0
# VBDVpQoAgoX77XxoSyxfxcPlYcJ2tz5mK1vwFVMnBDEfQRsalR3OCROOfGEwWbEw
# RA/xYIiEVEMM1024OAizQt2TrNZzMFcmgqNFDdDq9UeBzb8kYDJYYEbyWEeGMoQe
# dGFnkV+BVLHPk0ySwcSmXdFhE24oxhr5hoC732H8RsEnHSRnEnIaIYqvS2SJUGKx
# Xf13Hz3wV3WsvYpCTUBR0Q+cBj5nf/VmwAOWRH7v0Ev9buWayrGo8noqCjHw2k4G
# kbaICDXoeByw6ZnNPOcvRLqn9NxkvaQBwSAJk3jN/LzAyURdXhacAQVPIk0CAwEA
# AaOCAeYwggHiMBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBTVYzpcijGQ80N7
# fEYbxTNoWoVtVTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMC
# AYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvX
# zpoYxDBWBgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20v
# cGtpL2NybC9wcm9kdWN0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYI
# KwYBBQUHAQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNydDCBoAYDVR0g
# AQH/BIGVMIGSMIGPBgkrBgEEAYI3LgMwgYEwPQYIKwYBBQUHAgEWMWh0dHA6Ly93
# d3cubWljcm9zb2Z0LmNvbS9QS0kvZG9jcy9DUFMvZGVmYXVsdC5odG0wQAYIKwYB
# BQUHAgIwNB4yIB0ATABlAGcAYQBsAF8AUABvAGwAaQBjAHkAXwBTAHQAYQB0AGUA
# bQBlAG4AdAAuIB0wDQYJKoZIhvcNAQELBQADggIBAAfmiFEN4sbgmD+BcQM9naOh
# IW+z66bM9TG+zwXiqf76V20ZMLPCxWbJat/15/B4vceoniXj+bzta1RXCCtRgkQS
# +7lTjMz0YBKKdsxAQEGb3FwX/1z5Xhc1mCRWS3TvQhDIr79/xn/yN31aPxzymXlK
# kVIArzgPF/UveYFl2am1a+THzvbKegBvSzBEJCI8z+0DpZaPWSm8tv0E4XCfMkon
# /VWvL/625Y4zu2JfmttXQOnxzplmkIz/amJ/3cVKC5Em4jnsGUpxY517IW3DnKOi
# PPp/fZZqkHimbdLhnPkd/DjYlPTGpQqWhqS9nhquBEKDuLWAmyI4ILUl5WTs9/S/
# fmNZJQ96LjlXdqJxqgaKD4kWumGnEcua2A5HmoDF0M2n0O99g/DhO3EJ3110mCII
# YdqwUB5vvfHhAN/nMQekkzr3ZUd46PioSKv33nJ+YWtvd6mBy6cJrDm77MbL2IK0
# cs0d9LiFAR6A+xuJKlQ5slvayA1VmXqHczsI5pgt6o3gMy4SKfXAL1QnIffIrE7a
# KLixqduWsqdCosnPGUFN4Ib5KpqjEWYw07t0MkvfY3v1mYovG8chr1m1rtxEPJdQ
# cdeh0sVV42neV8HR3jDA/czmTfsNv11P6Z0eGTgvvM9YBS7vDaBQNdrvCScc1bN+
# NR4Iuto229Nfj950iEkSoYICzzCCAjgCAQEwgfyhgdSkgdEwgc4xCzAJBgNVBAYT
# AlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYD
# VQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBP
# cGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjo0
# RDJGLUUzREQtQkVFRjElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vy
# dmljZaIjCgEBMAcGBSsOAwIaAxUA+gfSqjdAndOFEaXOQyBCdupmQoeggYMwgYCk
# fjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIF
# AOVSzEIwIhgPMjAyMTEyMDIwODM4MjZaGA8yMDIxMTIwMzA4MzgyNlowdDA6Bgor
# BgEEAYRZCgQBMSwwKjAKAgUA5VLMQgIBADAHAgEAAgIZejAHAgEAAgIRLTAKAgUA
# 5VQdwgIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIBAAID
# B6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GBACZO+YQBrJ2EA76jpJAC
# xqmue4MRUYxk9QadSioKK52BEkb7bloWHVeWteS5PkYpZ88dLtxQ0tn5GnXxLvtG
# rfqT0P3F1l7Fs0/YJerGZk5cNCDor1q571Kb691hAnC8H6Sz9zTPUvKAIOGDbfrg
# Q3kUSdomurUBiUJLslJ1f5euMYIDDTCCAwkCAQEwgZMwfDELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgUENBIDIwMTACEzMAAAFfw65lVuVTWOwAAAAAAV8wDQYJYIZIAWUDBAIB
# BQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQx
# IgQgzTDPDqRChwu0OoqMkOZnevAUJ9XLhecGptzfMqcW2bowgfoGCyqGSIb3DQEJ
# EAIvMYHqMIHnMIHkMIG9BCDQzXq1KxGsLuj0szktrnlhIRqmbwp5bVGc6Bu6hglM
# XDCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAw
# DgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24x
# JjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABX8Ou
# ZVblU1jsAAAAAAFfMCIEINd9Srmq1ipAdQKERkv5yrO2WJL3bjz60HmZT8LISLRQ
# MA0GCSqGSIb3DQEBCwUABIIBAHGU9x/LY+JvY4LKqcghctYRZPWUdFvNt65Ix+6X
# yDy8pYfZmzGlZG14n5rAyb4fDjUWN0dsxSpZ836OFzy8Tfiyh1qZP7o580c8J3p/
# 1GSqIMMFbjfztrHDgcJoyPFkkUmDXADX9uXa01oIHKp9BnDXzabSea1v8qTibpWx
# JYp9tawORV0k69D7pXs0C/ZZrXxkw4q2nGz455icL0rY5c1buM8D+73eacdk4Pmh
# 5CrnLl/1lmiFwoVflzdIUR5QWPXXXXwiyoIOdOHcWjqtvhyndSW5FSWXSRm9qbCj
# fwMTZEc6Y4PRBgHcE1+R2/dJDwYVIIp73nSz8XxMbpeYCg4=
# SIG # End signature block