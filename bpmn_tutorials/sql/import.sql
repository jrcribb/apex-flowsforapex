set define off;
@"Tutorial 1  - Getting Started_24.1.sql";
@"Tutorial 2a - Basic Navigation with Gateways_24.1.sql";
@"Tutorial 2b - Parallel Gateways_24.1.sql";
@"Tutorial 2c - Inclusive Gateways_24.1.sql";
@"Tutorial 2d - Making your process pause_24.1.sql";
@"Tutorial 3a - Setting Process Variables from your Model_24.1.sql";
@"Tutorial 3b - Substitution and Bind Syntax_24.1.sql";
@"Tutorial 4a - Tasks Get Your Work Done!_24.1.sql";
@"Tutorial 4b - Reminders and Timeouts_24.1.sql";
@"Tutorial 4c - Task Priority and Due Dates_24.1.sql";
@"Tutorial 5a - Structure your Process with Sub Processes and Calls_24.1.sql";
@"Tutorial 5b - Introducing Sub Processes_24.1.sql";
@"Tutorial 5c - Handling Sub Process Error and Escalation Events_24.1.sql";
@"Tutorial 5d - Using CallActivities to call another diagram_24.1.sql";
@"Tutorial 5e - ship Goods (Called by Tutorial 5d)_24.1.sql";
@"Tutorial 5f - Making a Diagram Callable_24.1.sql";
@"Tutorial 6a - Collaborations, Lanes and Reservations_24.1.sql";
@"Tutorial 6b - Lanes and More Lanes_24.1.sql";
@"Tutorial 6c - User Assignment - Putting it all together_24.1.sql";
@"Tutorial 7a - MessageFlow Basics_24.1.sql";
@"Tutorial 7b - Process Collaboration and MessageFlow Example_24.1.sql";
@"Tutorial 7e - Introduction to Iterations and Tasks_24.1.sql";
@"Tutorial 7f - Iterations and Looped Sub Processes_24.1.sql";
@"Tutorial 7g - Iterations and Looped Nested Sub Processes_24.1.sql";
@"Tutorial 8a - The Full Monty (the top half!)_24.1.sql";
@"Tutorial 8c - Background Session Configuration_24.1.sql";

-- promote call activity tutorials to released
begin
  flow_admin_api.release_diagram (pi_dgrm_name =>'Tutorial 5e - ship Goods (Called by Tutorial 5d)', pi_dgrm_version => '24.1');
end;
/
