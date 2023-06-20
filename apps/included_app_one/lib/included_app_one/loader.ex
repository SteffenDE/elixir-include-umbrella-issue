defmodule IncludedAppOne.Loader do
  def init_geolix do
    priv_dir = Application.app_dir(:included_app_one, "priv")

    Application.put_env(:geolix, :databases, [
      %{
        id: :city,
        adapter: Geolix.Adapter.MMDB2,
        source: Path.join([priv_dir, "GeoIP2-City-Test.mmdb"])
      }
    ])
  end
end
