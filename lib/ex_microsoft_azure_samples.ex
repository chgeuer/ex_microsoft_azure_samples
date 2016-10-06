defmodule ExMicrosoftAzureSamples do


  def get_access_token_de do
    {:ok, pid} = ExMicrosoftAzure.ActiveDirectory.start_link

    pid |> ExMicrosoftAzure.ActiveDirectory.get_access_token(%{
      environment: :azure_german_cloud,
      aad_tenant_id: "AZURE_DE_PACKER_TENANTID" |> System.get_env,
      client_id: "AZURE_DE_PACKER_APPID" |> System.get_env,
      client_secret:  "AZURE_DE_PACKER_PASSWORD" |> System.get_env
    })
   end

   def get_access_token_public do
     {:ok, pid} = ExMicrosoftAzure.ActiveDirectory.start_link

     pid |> ExMicrosoftAzure.ActiveDirectory.get_access_token(%{
       environment: :azure_cloud,
       aad_tenant_id: "AZURE_PACKER_TENANTID" |> System.get_env,
       client_id: "AZURE_PACKER_APPID" |> System.get_env,
       client_secret:  "AZURE_PACKER_PASSWORD" |> System.get_env
     })
    end

end
