#include <gazebo/gazebo.hh>

namespace gazebo
{
  class WorldPluginMyRobot : public WorldPlugin
  {
    // Use Constructor to print Hello World
    public: WorldPluginMyRobot() : WorldPlugin()
            {
              printf("Hello World!\n");
            }

    // Receives info from world file
    public: void Load(physics::WorldPtr _world, sdf::ElementPtr _sdf)
            {
            }
  };
  GZ_REGISTER_WORLD_PLUGIN(WorldPluginMyRobot)
}