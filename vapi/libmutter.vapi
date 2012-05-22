/* libmutter.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Meta", gir_namespace = "Meta", gir_version = "3.0", lower_case_cprefix = "meta_")]
namespace Meta {
	[CCode (cheader_filename = "meta/main.h", type_id = "meta_background_actor_get_type ()")]
	public class BackgroundActor : Clutter.Actor, Atk.Implementor, Clutter.Animatable, Clutter.Scriptable {
		[CCode (has_construct_function = false)]
		protected BackgroundActor ();
		[CCode (has_construct_function = false, type = "ClutterActor*")]
		public BackgroundActor.for_screen (Meta.Screen screen);
		[NoAccessorMethod]
		public float dim_factor { get; set; }
	}
	[CCode (cheader_filename = "meta/main.h", type_id = "meta_display_get_type ()")]
	public class Display : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Display ();
		public void add_ignored_crossing_serial (ulong serial);
		public bool begin_grab_op (Meta.Screen screen, Meta.Window window, Meta.GrabOp op, bool pointer_already_grabbed, bool frame_action, int button, ulong modmask, uint32 timestamp, int root_x, int root_y);
		public void end_grab_op (uint32 timestamp);
		public void focus_the_no_focus_window (Meta.Screen screen, uint32 timestamp);
		public void get_compositor_version (int major, int minor);
		public uint32 get_current_time ();
		public uint32 get_current_time_roundtrip ();
		public int get_damage_event_base ();
		public unowned Meta.Window get_focus_window ();
		public Meta.GrabOp get_grab_op ();
		public Meta.KeyBindingAction get_keybinding_action (uint keycode, ulong mask);
		public uint32 get_last_user_time ();
		public X.Window get_leader_window ();
		public unowned GLib.SList<Meta.Screen> get_screens ();
		public int get_shape_event_base ();
		public unowned Meta.Window get_tab_current (Meta.TabList type, Meta.Screen screen, Meta.Workspace workspace);
		public GLib.List<weak Meta.Window> get_tab_list (Meta.TabList type, Meta.Screen screen, Meta.Workspace workspace);
		public unowned Meta.Window get_tab_next (Meta.TabList type, Meta.Screen screen, Meta.Workspace workspace, Meta.Window? window, bool backward);
		public bool has_shape ();
		public unowned Meta.Screen screen_for_root (X.Window xroot);
		public void set_input_focus_window (Meta.Window window, bool focus_frame, uint32 timestamp);
		public GLib.SList<weak Meta.Window> sort_windows_by_stacking (GLib.SList<Meta.Window> windows);
		public bool xserver_time_is_before (uint32 time1, uint32 time2);
		public bool xwindow_is_a_no_focus_window (X.Window xwindow);
		public Meta.Window focus_window { get; }
		public signal void overlay_key ();
		public signal void window_created (Meta.Window object);
		public signal void window_demands_attention (Meta.Window object);
		public signal void window_marked_urgent (Meta.Window object);
	}
	[CCode (cheader_filename = "meta/main.h")]
	[Compact]
	public class Frame {
	}
	[CCode (cheader_filename = "meta/main.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "meta_rectangle_get_type ()")]
	[Compact]
	public class Rectangle {
		public int height;
		public int width;
		public int x;
		public int y;
		public int area ();
		public bool contains_rect (Meta.Rectangle inner_rect);
		public Meta.Rectangle copy ();
		public bool could_fit_rect (Meta.Rectangle inner_rect);
		public bool equal (Meta.Rectangle src2);
		public void free ();
		public bool horiz_overlap (Meta.Rectangle rect2);
		public bool intersect (Meta.Rectangle src2, out unowned Meta.Rectangle dest);
		public bool overlap (Meta.Rectangle rect2);
		public void union (Meta.Rectangle rect2, out unowned Meta.Rectangle dest);
		public bool vert_overlap (Meta.Rectangle rect2);
	}
	[CCode (cheader_filename = "meta/main.h")]
	[Compact]
	public class ResizePopup {
	}
	[CCode (cheader_filename = "meta/main.h", type_id = "meta_screen_get_type ()")]
	public class Screen : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Screen ();
		public unowned Meta.Workspace append_new_workspace (bool activate, uint32 timestamp);
		public static unowned Meta.Screen for_x_screen (X.Screen xscreen);
		public unowned Meta.Workspace get_active_workspace ();
		public int get_active_workspace_index ();
		public unowned Meta.Display get_display ();
		public void get_monitor_geometry (int monitor, out unowned Meta.Rectangle geometry);
		public int get_n_monitors ();
		public int get_n_workspaces ();
		public int get_primary_monitor ();
		public int get_screen_number ();
		public void get_size (out int width, out int height);
		public unowned Meta.Workspace get_workspace_by_index (int index);
		public bool grab_all_keys (uint32 timestamp);
		public void override_workspace_layout (Meta.ScreenCorner starting_corner, bool vertical_layout, int n_rows, int n_columns);
		public void remove_workspace (Meta.Workspace workspace, uint32 timestamp);
		public void set_cm_selection ();
		public void set_compositor_data (void* info);
		public void ungrab_all_keys (uint32 timestamp);
		public void unset_cm_selection ();
		[NoAccessorMethod]
		public bool keyboard_grabbed { get; }
		public int n_workspaces { get; }
		public signal void monitors_changed ();
		public signal void restacked ();
		public signal void startup_sequence_changed (void* object);
		public signal void toggle_recording ();
		public signal void window_entered_monitor (int object, Meta.Window p0);
		public signal void window_left_monitor (int object, Meta.Window p0);
		public signal void workareas_changed ();
		public signal void workspace_added (int object);
		public signal void workspace_removed (int object);
		public signal void workspace_switched (int object, int p0, Meta.MotionDirection p1);
	}
	[CCode (cheader_filename = "meta/main.h", type_id = "meta_shadow_factory_get_type ()")]
	public class ShadowFactory : GLib.Object {
		[CCode (has_construct_function = false)]
		protected ShadowFactory ();
		public static unowned Meta.ShadowFactory get_default ();
		public Meta.ShadowParams get_params (string class_name, bool focused);
		public void set_params (string class_name, bool focused, Meta.ShadowParams @params);
		public signal void changed ();
	}
	[CCode (cheader_filename = "meta/theme.h")]
	[Compact]
	public class Theme {
		public void draw_frame (Gtk.Widget widget, Cairo.Context cr, Meta.FrameType type, Meta.FrameFlags flags, int client_width, int client_height, Pango.Layout title_layout, int text_height, Meta.ButtonLayout button_layout, [CCode (array_length = false)] Meta.ButtonState[] button_states, Gdk.Pixbuf mini_icon, Gdk.Pixbuf icon);
		public void free ();
		public static Theme get_current ();
		public static Theme load (string name) throws GLib.Error;
		public static void set_current (string name, bool force_reload);
		public bool validate () throws GLib.Error;
	}
	[CCode (cheader_filename = "meta/window.h", type_id = "meta_window_get_type ()")]
	public class Window : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Window ();
		public void activate (uint32 current_time);
		public void activate_with_workspace (uint32 current_time, Meta.Workspace workspace);
		public void change_workspace_by_index (int space_index, bool append, uint32 timestamp);
		public void compute_group ();
		public void @delete (uint32 timestamp);
		public unowned Meta.Window find_root_ancestor ();
		public void foreach_ancestor (Meta.WindowForeachFunc func);
		public void foreach_transient (Meta.WindowForeachFunc func);
		public unowned string get_client_machine ();
		public unowned GLib.Object get_compositor_private ();
		public unowned string get_description ();
		public unowned Meta.Display get_display ();
		public unowned Cairo.Region get_frame_bounds ();
		public Meta.FrameType get_frame_type ();
		public bool get_icon_geometry (Meta.Rectangle rect);
		public void get_input_rect (out unowned Meta.Rectangle rect);
		public Meta.StackLayer get_layer ();
		public Meta.MaximizeFlags get_maximized ();
		public int get_monitor ();
		public unowned string get_mutter_hints ();
		public void get_outer_rect (out unowned Meta.Rectangle rect);
		public int get_pid ();
		public unowned Meta.Rectangle get_rect ();
		public unowned string get_role ();
		public unowned Meta.Screen get_screen ();
		public uint get_stable_sequence ();
		public unowned string get_startup_id ();
		public unowned string get_title ();
		public unowned Meta.Window get_transient_for ();
		public X.Window get_transient_for_as_xid ();
		public uint32 get_user_time ();
		public Meta.WindowType get_window_type ();
		public unowned string get_wm_class ();
		public unowned string get_wm_class_instance ();
		public unowned Meta.Workspace get_workspace ();
		public void group_leader_changed ();
		public bool has_focus ();
		public bool is_ancestor_of_transient (Meta.Window transient);
		public bool is_attached_dialog ();
		public bool is_fullscreen ();
		public bool is_hidden ();
		public bool is_mapped ();
		public bool is_modal ();
		public bool is_on_all_workspaces ();
		public bool is_on_primary_monitor ();
		public bool is_override_redirect ();
		public bool is_remote ();
		public bool is_shaded ();
		public bool is_skip_taskbar ();
		public void lower ();
		public void maximize (Meta.MaximizeFlags directions);
		public void minimize ();
		public void move (bool user_op, int root_x_nw, int root_y_nw);
		public void move_frame (bool user_op, int root_x_nw, int root_y_nw);
		public void move_to_monitor (int monitor);
		public void raise ();
		public void resize (bool user_op, int w, int h);
		public void set_compositor_private (GLib.Object priv);
		public void set_demands_attention ();
		public bool showing_on_its_workspace ();
		public void shutdown_group ();
		public bool toplevel_is_mapped ();
		public void unmaximize (Meta.MaximizeFlags directions);
		public void unminimize ();
		public void unset_demands_attention ();
		[NoAccessorMethod]
		public bool above { get; }
		[NoAccessorMethod]
		public bool appears_focused { get; }
		[NoAccessorMethod]
		public bool decorated { get; }
		[NoAccessorMethod]
		public bool demands_attention { get; }
		[NoAccessorMethod]
		public bool fullscreen { get; }
		[NoAccessorMethod]
		public Gdk.Pixbuf icon { owned get; }
		[NoAccessorMethod]
		public bool maximized_horizontally { get; }
		[NoAccessorMethod]
		public bool maximized_vertically { get; }
		[NoAccessorMethod]
		public Gdk.Pixbuf mini_icon { owned get; }
		[NoAccessorMethod]
		public bool minimized { get; }
		public string mutter_hints { get; }
		[NoAccessorMethod]
		public bool resizeable { get; }
		public string title { get; }
		[NoAccessorMethod]
		public bool urgent { get; }
		public uint user_time { get; }
		public Meta.WindowType window_type { get; }
		public string wm_class { get; }
		public signal void focus ();
		public signal void raised ();
		public signal void unmanaged ();
		public signal void workspace_changed (int object);
	}
	[CCode (cheader_filename = "meta/main.h", type_id = "meta_window_actor_get_type ()")]
	public class WindowActor : Clutter.Group, Atk.Implementor, Clutter.Animatable, Clutter.Container, Clutter.Scriptable {
		[CCode (has_construct_function = false)]
		protected WindowActor ();
		public unowned string get_description ();
		public unowned Meta.Window get_meta_window ();
		public unowned Clutter.Actor get_texture ();
		public int get_workspace ();
		public bool is_destroyed ();
		public bool is_override_redirect ();
		public bool showing_on_its_workspace ();
		[NoAccessorMethod]
		public void* meta_screen { get; set construct; }
		[NoAccessorMethod]
		public Meta.Window meta_window { owned get; set construct; }
		[NoAccessorMethod]
		public bool no_shadow { get; set; }
		[NoAccessorMethod]
		public string shadow_class { owned get; set; }
		[NoAccessorMethod]
		public ulong x_window { get; set construct; }
		public signal void position_changed ();
		public signal void size_changed ();
	}
	[CCode (cheader_filename = "meta/main.h")]
	[Compact]
	public class WindowMenu {
	}
	[CCode (cheader_filename = "meta/main.h")]
	[Compact]
	public class KeyBinding {
		public string get_name ();
		public VirtualModifier get_modifiers ();
		public uint get_mask ();
	}
	[CCode (cheader_filename = "meta/main.h", type_id = "meta_workspace_get_type ()")]
	public class Workspace : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Workspace ();
		public void activate (uint32 timestamp);
		public void activate_with_focus (Meta.Window focus_this, uint32 timestamp);
		public unowned Meta.Screen get_screen ();
		public void get_work_area_all_monitors (Meta.Rectangle area);
		public int index ();
		public GLib.List<weak Meta.Window> list_windows ();
		public void set_builtin_struts (GLib.SList<Meta.Strut> struts);
		public void update_window_hints ();
		[NoAccessorMethod]
		public uint n_windows { get; }
		public signal void window_added (Meta.Window object);
		public signal void window_removed (Meta.Window object);
	}
	[CCode (cheader_filename = "meta/meta-plugin.h", type_id = "meta_plugin_get_type ()")]
	public class Plugin : GLib.Object {
	    [CCode (has_construct_function = false)]
	    protected Plugin ();
	    public virtual void start ();
	    public virtual void minimize (WindowActor actor);
	    public virtual void maximize (WindowActor actor, int x, int y, int w, int h);
	    public virtual void map (WindowActor actor);
	    public virtual void destroy (WindowActor actor);
	    public virtual void switch_workspace (int from, int to, MotionDirection direction);
	    public virtual void kill_window_effects (WindowActor actor);
	    public virtual void kill_switch_workspace ();
	    public virtual bool xevent_filter (X.Event event);
	    
	    public virtual PluginInfo plugin_info ();
	    
	    public void switch_workspace_completed ();
	    public void minimize_completed (WindowActor actor);
	    public void maximize_completed (WindowActor actor);
	    public void unmaximize_completed (WindowActor actor);
	    public void map_completed (WindowActor actor);
	    public void destroy_completed (WindowActor actor);
	    
	    public Screen get_screen ();
	    public void begin_modal (X.Window grab_window, Cursor cursor, ModalOptions options,
	        uint32 timestamp);
	    public void end_modal (uint32 timestamp);
	    
	    public static void type_register (GLib.Type plugin_type);
	}
	[CCode (cheader_filename = "meta/main.h", has_type_id = false)]
	public struct ButtonLayout {
		[CCode (array_length = false, array_null_terminated = true)]
		public weak Meta.ButtonFunction[] left_buttons;
		[CCode (array_length = false, array_null_terminated = true)]
		public weak bool[] left_buttons_has_spacer;
		[CCode (array_length = false, array_null_terminated = true)]
		public weak Meta.ButtonFunction[] right_buttons;
		[CCode (array_length = false, array_null_terminated = true)]
		public weak bool[] right_buttons_has_spacer;
	}
	[CCode (cheader_filename = "meta/main.h", has_type_id = false)]
	public struct Edge {
		public weak Meta.Rectangle rect;
		public Meta.Side side_type;
		public Meta.EdgeType edge_type;
	}
	[CCode (cheader_filename = "meta/main.h", has_type_id = false)]
	public struct FrameBorders {
		public Gtk.Border visible;
		public Gtk.Border invisible;
		public Gtk.Border total;
		public void clear ();
	}
	[CCode (cheader_filename = "meta/main.h", has_type_id = false)]
	public struct KeyCombo {
		public uint keysym;
		public uint keycode;
		public Meta.VirtualModifier modifiers;
	}
	[CCode (cheader_filename = "meta/main.h", has_type_id = false)]
	public struct KeyHandler {
		public weak string name;
		public int data;
		public int flags;
		public void* user_data;
		public weak GLib.DestroyNotify user_data_free_func;
	}
	[CCode (cheader_filename = "meta/main.h", has_type_id = false)]
	public struct KeyPref {
		public weak string name;
		public weak string default_keybinding;
		public weak GLib.SList<void*> bindings;
		public bool add_shift;
		public bool per_window;
	}
	[CCode (cheader_filename = "meta/main.h", has_type_id = false)]
	public struct PluginInfo {
		public weak string name;
		public weak string version;
		public weak string author;
		public weak string license;
		public weak string description;
	}
	[CCode (cheader_filename = "meta/main.h", has_type_id = false)]
	public struct PluginVersion {
		public uint version_major;
		public uint version_minor;
		public uint version_micro;
		public uint version_api;
	}
	[CCode (cheader_filename = "meta/main.h", has_type_id = false)]
	public struct ShadowParams {
		public int radius;
		public int top_fade;
		public int x_offset;
		public int y_offset;
		public uint8 opacity;
	}
	[CCode (cheader_filename = "meta/main.h", has_type_id = false)]
	public struct Strut {
		public weak Meta.Rectangle rect;
		public Meta.Side side;
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_ACTION_TITLEBAR_")]
	public enum ActionTitlebar {
		TOGGLE_SHADE,
		TOGGLE_MAXIMIZE,
		TOGGLE_MAXIMIZE_HORIZONTALLY,
		TOGGLE_MAXIMIZE_VERTICALLY,
		MINIMIZE,
		NONE,
		LOWER,
		MENU,
		LAST
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_ATOM_")]
	public enum Atom {
		FIRST
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_BUTTON_FUNCTION_")]
	public enum ButtonFunction {
		MENU,
		MINIMIZE,
		MAXIMIZE,
		CLOSE,
		SHADE,
		ABOVE,
		STICK,
		UNSHADE,
		UNABOVE,
		UNSTICK,
		LAST
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_BUTTON_STATE_")]
	public enum ButtonState {
		NORMAL,
		PRESSED,
		PRELIGHT,
		LAST
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_BUTTON_TYPE_")]
	public enum ButtonType {
		LEFT_LEFT_BACKGROUND,
		LEFT_MIDDLE_BACKGROUND,
		LEFT_RIGHT_BACKGROUND,
		LEFT_SINGLE_BACKGROUND,
		RIGHT_LEFT_BACKGROUND,
		RIGHT_MIDDLE_BACKGROUND,
		RIGHT_RIGHT_BACKGROUND,
		RIGHT_SINGLE_BACKGROUND,
		CLOSE,
		MAXIMIZE,
		MINIMIZE,
		MENU,
		SHADE,
		ABOVE,
		STICK,
		UNSHADE,
		UNABOVE,
		UNSTICK,
		LAST
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_COMP_EFFECT_")]
	public enum CompEffect {
		CREATE,
		UNMINIMIZE,
		DESTROY,
		MINIMIZE,
		NONE
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_CURSOR_")]
	public enum Cursor {
		DEFAULT,
		NORTH_RESIZE,
		SOUTH_RESIZE,
		WEST_RESIZE,
		EAST_RESIZE,
		SE_RESIZE,
		SW_RESIZE,
		NE_RESIZE,
		NW_RESIZE,
		MOVE_OR_RESIZE_WINDOW,
		BUSY
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_DEBUG_")]
	[Flags]
	public enum DebugTopic {
		VERBOSE,
		FOCUS,
		WORKAREA,
		STACK,
		THEMES,
		SM,
		EVENTS,
		WINDOW_STATE,
		WINDOW_OPS,
		GEOMETRY,
		PLACEMENT,
		PING,
		XINERAMA,
		KEYBINDINGS,
		SYNC,
		ERRORS,
		STARTUP,
		PREFS,
		GROUPS,
		RESIZING,
		SHAPES,
		COMPOSITOR,
		EDGE_RESISTANCE
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_DIRECTION_")]
	[Flags]
	public enum Direction {
		LEFT,
		RIGHT,
		TOP,
		BOTTOM,
		UP,
		DOWN,
		HORIZONTAL,
		VERTICAL
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_EDGE_")]
	public enum EdgeType {
		WINDOW,
		MONITOR,
		SCREEN
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_EXIT_")]
	public enum ExitCode {
		SUCCESS,
		ERROR
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_FOCUS_MODE_")]
	public enum FocusMode {
		CLICK,
		SLOPPY,
		MOUSE
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_FOCUS_NEW_WINDOWS_")]
	public enum FocusNewWindows {
		SMART,
		STRICT
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_FRAME_")]
	[Flags]
	public enum FrameFlags {
		ALLOWS_DELETE,
		ALLOWS_MENU,
		ALLOWS_MINIMIZE,
		ALLOWS_MAXIMIZE,
		ALLOWS_VERTICAL_RESIZE,
		ALLOWS_HORIZONTAL_RESIZE,
		HAS_FOCUS,
		SHADED,
		STUCK,
		MAXIMIZED,
		ALLOWS_SHADE,
		ALLOWS_MOVE,
		FULLSCREEN,
		IS_FLASHING,
		ABOVE,
		TILED_LEFT,
		TILED_RIGHT
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_FRAME_TYPE_")]
	public enum FrameType {
		NORMAL,
		DIALOG,
		MODAL_DIALOG,
		UTILITY,
		MENU,
		BORDER,
		ATTACHED,
		LAST;
		public static unowned string to_string (Meta.FrameType type);
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_GRAB_OP_")]
	public enum GrabOp {
		NONE,
		MOVING,
		RESIZING_SE,
		RESIZING_S,
		RESIZING_SW,
		RESIZING_N,
		RESIZING_NE,
		RESIZING_NW,
		RESIZING_W,
		RESIZING_E,
		KEYBOARD_MOVING,
		KEYBOARD_RESIZING_UNKNOWN,
		KEYBOARD_RESIZING_S,
		KEYBOARD_RESIZING_N,
		KEYBOARD_RESIZING_W,
		KEYBOARD_RESIZING_E,
		KEYBOARD_RESIZING_SE,
		KEYBOARD_RESIZING_NE,
		KEYBOARD_RESIZING_SW,
		KEYBOARD_RESIZING_NW,
		KEYBOARD_TABBING_NORMAL,
		KEYBOARD_TABBING_DOCK,
		KEYBOARD_ESCAPING_NORMAL,
		KEYBOARD_ESCAPING_DOCK,
		KEYBOARD_ESCAPING_GROUP,
		KEYBOARD_TABBING_GROUP,
		KEYBOARD_WORKSPACE_SWITCHING,
		CLICKING_MINIMIZE,
		CLICKING_MAXIMIZE,
		CLICKING_UNMAXIMIZE,
		CLICKING_DELETE,
		CLICKING_MENU,
		CLICKING_SHADE,
		CLICKING_UNSHADE,
		CLICKING_ABOVE,
		CLICKING_UNABOVE,
		CLICKING_STICK,
		CLICKING_UNSTICK,
		COMPOSITOR
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_GRADIENT_")]
	public enum GradientType {
		VERTICAL,
		HORIZONTAL,
		DIAGONAL,
		LAST
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_KEYBINDING_ACTION_")]
	public enum KeyBindingAction {
		NONE,
		WORKSPACE_1,
		WORKSPACE_2,
		WORKSPACE_3,
		WORKSPACE_4,
		WORKSPACE_5,
		WORKSPACE_6,
		WORKSPACE_7,
		WORKSPACE_8,
		WORKSPACE_9,
		WORKSPACE_10,
		WORKSPACE_11,
		WORKSPACE_12,
		WORKSPACE_LEFT,
		WORKSPACE_RIGHT,
		WORKSPACE_UP,
		WORKSPACE_DOWN,
		SWITCH_GROUP,
		SWITCH_GROUP_BACKWARD,
		SWITCH_WINDOWS,
		SWITCH_WINDOWS_BACKWARD,
		SWITCH_PANELS,
		SWITCH_PANELS_BACKWARD,
		CYCLE_GROUP,
		CYCLE_GROUP_BACKWARD,
		CYCLE_WINDOWS,
		CYCLE_WINDOWS_BACKWARD,
		CYCLE_PANELS,
		CYCLE_PANELS_BACKWARD,
		TAB_POPUP_SELECT,
		TAB_POPUP_CANCEL,
		SHOW_DESKTOP,
		PANEL_MAIN_MENU,
		PANEL_RUN_DIALOG,
		TOGGLE_RECORDING,
		COMMAND_1,
		COMMAND_2,
		COMMAND_3,
		COMMAND_4,
		COMMAND_5,
		COMMAND_6,
		COMMAND_7,
		COMMAND_8,
		COMMAND_9,
		COMMAND_10,
		COMMAND_11,
		COMMAND_12,
		COMMAND_13,
		COMMAND_14,
		COMMAND_15,
		COMMAND_16,
		COMMAND_17,
		COMMAND_18,
		COMMAND_19,
		COMMAND_20,
		COMMAND_21,
		COMMAND_22,
		COMMAND_23,
		COMMAND_24,
		COMMAND_25,
		COMMAND_26,
		COMMAND_27,
		COMMAND_28,
		COMMAND_29,
		COMMAND_30,
		COMMAND_31,
		COMMAND_32,
		COMMAND_SCREENSHOT,
		COMMAND_WINDOW_SCREENSHOT,
		COMMAND_TERMINAL,
		SET_SPEW_MARK,
		ACTIVATE_WINDOW_MENU,
		TOGGLE_FULLSCREEN,
		TOGGLE_MAXIMIZED,
		TOGGLE_ABOVE,
		MAXIMIZE,
		UNMAXIMIZE,
		TOGGLE_SHADED,
		MINIMIZE,
		CLOSE,
		BEGIN_MOVE,
		BEGIN_RESIZE,
		TOGGLE_ON_ALL_WORKSPACES,
		MOVE_TO_WORKSPACE_1,
		MOVE_TO_WORKSPACE_2,
		MOVE_TO_WORKSPACE_3,
		MOVE_TO_WORKSPACE_4,
		MOVE_TO_WORKSPACE_5,
		MOVE_TO_WORKSPACE_6,
		MOVE_TO_WORKSPACE_7,
		MOVE_TO_WORKSPACE_8,
		MOVE_TO_WORKSPACE_9,
		MOVE_TO_WORKSPACE_10,
		MOVE_TO_WORKSPACE_11,
		MOVE_TO_WORKSPACE_12,
		MOVE_TO_WORKSPACE_LEFT,
		MOVE_TO_WORKSPACE_RIGHT,
		MOVE_TO_WORKSPACE_UP,
		MOVE_TO_WORKSPACE_DOWN,
		RAISE_OR_LOWER,
		RAISE,
		LOWER,
		MAXIMIZE_VERTICALLY,
		MAXIMIZE_HORIZONTALLY,
		MOVE_TO_CORNER_NW,
		MOVE_TO_CORNER_NE,
		MOVE_TO_CORNER_SW,
		MOVE_TO_CORNER_SE,
		MOVE_TO_SIDE_N,
		MOVE_TO_SIDE_S,
		MOVE_TO_SIDE_E,
		MOVE_TO_SIDE_W,
		MOVE_TO_CENTER,
		LAST
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_LATER_")]
	public enum LaterType {
		RESIZE,
		BEFORE_REDRAW,
		IDLE
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_MAXIMIZE_")]
	[Flags]
	public enum MaximizeFlags {
		HORIZONTAL,
		VERTICAL
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_MENU_OP_")]
	[Flags]
	public enum MenuOp {
		NONE,
		DELETE,
		MINIMIZE,
		UNMAXIMIZE,
		MAXIMIZE,
		UNSHADE,
		SHADE,
		UNSTICK,
		STICK,
		WORKSPACES,
		MOVE,
		RESIZE,
		ABOVE,
		UNABOVE,
		MOVE_LEFT,
		MOVE_RIGHT,
		MOVE_UP,
		MOVE_DOWN,
		RECOVER
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_MODAL_")]
	[Flags]
	public enum ModalOptions {
		POINTER_ALREADY_GRABBED,
		KEYBOARD_ALREADY_GRABBED
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_MOTION_")]
	public enum MotionDirection {
		UP,
		DOWN,
		LEFT,
		RIGHT,
		UP_LEFT,
		UP_RIGHT,
		DOWN_LEFT,
		DOWN_RIGHT
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_PREF_")]
	public enum Preference {
		MOUSE_BUTTON_MODS,
		FOCUS_MODE,
		FOCUS_NEW_WINDOWS,
		ATTACH_MODAL_DIALOGS,
		RAISE_ON_CLICK,
		ACTION_DOUBLE_CLICK_TITLEBAR,
		ACTION_MIDDLE_CLICK_TITLEBAR,
		ACTION_RIGHT_CLICK_TITLEBAR,
		AUTO_RAISE,
		AUTO_RAISE_DELAY,
		THEME,
		TITLEBAR_FONT,
		NUM_WORKSPACES,
		APPLICATION_BASED,
		KEYBINDINGS,
		DISABLE_WORKAROUNDS,
		COMMANDS,
		TERMINAL_COMMAND,
		BUTTON_LAYOUT,
		WORKSPACE_NAMES,
		VISUAL_BELL,
		AUDIBLE_BELL,
		VISUAL_BELL_TYPE,
		GNOME_ACCESSIBILITY,
		GNOME_ANIMATIONS,
		CURSOR_THEME,
		CURSOR_SIZE,
		RESIZE_WITH_RIGHT_BUTTON,
		EDGE_TILING,
		FORCE_FULLSCREEN,
		LIVE_HIDDEN_WINDOWS,
		WORKSPACES_ONLY_ON_PRIMARY,
		NO_TAB_POPUP,
		DRAGGABLE_BORDER_WIDTH;
		public static unowned string to_string (Meta.Preference pref);
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_SCREEN_")]
	public enum ScreenCorner {
		TOPLEFT,
		TOPRIGHT,
		BOTTOMLEFT,
		BOTTOMRIGHT
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_SIDE_")]
	public enum Side {
		LEFT,
		RIGHT,
		TOP,
		BOTTOM
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_LAYER_")]
	public enum StackLayer {
		DESKTOP,
		BOTTOM,
		NORMAL,
		TOP,
		DOCK,
		FULLSCREEN,
		FOCUSED_WINDOW,
		OVERRIDE_REDIRECT,
		LAST
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_TAB_LIST_")]
	public enum TabList {
		NORMAL,
		DOCKS,
		GROUP
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_TAB_SHOW_")]
	public enum TabShowType {
		ICON,
		INSTANTLY
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_VIRTUAL_")]
	[Flags]
	public enum VirtualModifier {
		SHIFT_MASK,
		CONTROL_MASK,
		ALT_MASK,
		META_MASK,
		SUPER_MASK,
		HYPER_MASK,
		MOD2_MASK,
		MOD3_MASK,
		MOD4_MASK,
		MOD5_MASK
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_VISUAL_BELL_")]
	public enum VisualBellType {
		INVALID,
		FULLSCREEN_FLASH,
		FRAME_FLASH
	}
	[CCode (cheader_filename = "meta/main.h", cprefix = "META_WINDOW_")]
	public enum WindowType {
		NORMAL,
		DESKTOP,
		DOCK,
		DIALOG,
		MODAL_DIALOG,
		TOOLBAR,
		MENU,
		UTILITY,
		SPLASHSCREEN,
		DROPDOWN_MENU,
		POPUP_MENU,
		TOOLTIP,
		NOTIFICATION,
		COMBO,
		DND,
		OVERRIDE_OTHER
	}
	[CCode (cheader_filename = "meta/main.h", has_target = false)]
	public delegate void PrefsChangedFunc (Meta.Preference pref, void* data);
	[CCode (cheader_filename = "meta/main.h", has_target = false)]
	public delegate bool WindowForeachFunc (Meta.Window window, void* data);
	[CCode (cheader_filename = "meta/main.h", has_target = false)]
	public delegate void WindowMenuFunc (Meta.WindowMenu menu, X.Display xdisplay, X.Window client_xwindow, uint32 timestamp, Meta.MenuOp op, int workspace, void* data);
	[CCode (cheader_filename = "meta/main.h", cname = "META_DEFAULT_ICON_NAME")]
	public const string DEFAULT_ICON_NAME;
	[CCode (cheader_filename = "meta/main.h", cname = "META_ICON_HEIGHT")]
	public const int ICON_HEIGHT;
	[CCode (cheader_filename = "meta/main.h", cname = "META_ICON_WIDTH")]
	public const int ICON_WIDTH;
	[CCode (cheader_filename = "meta/main.h", cname = "META_MINI_ICON_HEIGHT")]
	public const int MINI_ICON_HEIGHT;
	[CCode (cheader_filename = "meta/main.h", cname = "META_MINI_ICON_WIDTH")]
	public const int MINI_ICON_WIDTH;
	[CCode (cheader_filename = "meta/main.h", cname = "META_PRIORITY_BEFORE_REDRAW")]
	public const int PRIORITY_BEFORE_REDRAW;
	[CCode (cheader_filename = "meta/main.h", cname = "META_PRIORITY_PREFS_NOTIFY")]
	public const int PRIORITY_PREFS_NOTIFY;
	[CCode (cheader_filename = "meta/main.h", cname = "META_PRIORITY_REDRAW")]
	public const int PRIORITY_REDRAW;
	[CCode (cheader_filename = "meta/main.h", cname = "META_PRIORITY_RESIZE")]
	public const int PRIORITY_RESIZE;
	[CCode (cheader_filename = "meta/main.h")]
	public static void add_verbose_topic (Meta.DebugTopic topic);
	[CCode (cheader_filename = "meta/main.h")]
	public static void disable_unredirect_for_screen (Meta.Screen screen);
	[CCode (cheader_filename = "meta/main.h")]
	public static void enable_unredirect_for_screen (Meta.Screen screen);
	[CCode (cheader_filename = "meta/main.h")]
	public static void error_trap_pop (Meta.Display display);
	[CCode (cheader_filename = "meta/main.h")]
	public static int error_trap_pop_with_return (Meta.Display display);
	[CCode (cheader_filename = "meta/main.h")]
	public static void error_trap_push (Meta.Display display);
	[CCode (cheader_filename = "meta/main.h")]
	public static void error_trap_push_with_return (Meta.Display display);
	[CCode (cheader_filename = "meta/main.h")]
	public static void exit (Meta.ExitCode code);
	[CCode (cheader_filename = "meta/main.h")]
	public static string g_utf8_strndup (string src, size_t n);
	[CCode (cheader_filename = "meta/main.h")]
	public static unowned Clutter.Actor get_background_actor_for_screen (Meta.Screen screen);
	[CCode (cheader_filename = "meta/main.h")]
	public static unowned Clutter.Actor get_overlay_group_for_screen (Meta.Screen screen);
	[CCode (cheader_filename = "meta/main.h")]
	public static bool get_replace_current_wm ();
	[CCode (cheader_filename = "meta/main.h")]
	public static unowned Clutter.Actor get_stage_for_screen (Meta.Screen screen);
	[CCode (cheader_filename = "meta/main.h")]
	public static void empty_stage_input_region (Meta.Screen screen);
	[CCode (cheader_filename = "meta/main.h")]
	public static void set_stage_input_region (Meta.Screen screen, X.ID region);
	[CCode (cheader_filename = "meta/main.h")]
	public static unowned GLib.List<Clutter.Actor> get_window_actors (Meta.Screen screen);
	[CCode (cheader_filename = "meta/main.h")]
	public static unowned Clutter.Actor get_window_group_for_screen (Meta.Screen screen);
	[CCode (cheader_filename = "meta/main.h")]
	public static void gradient_add_alpha (Gdk.Pixbuf pixbuf, uint8 alphas, int n_alphas, Meta.GradientType type);
	[CCode (cheader_filename = "meta/main.h")]
	public static Gdk.Pixbuf gradient_create_multi (int width, int height, [CCode (array_length_cname = "n_colors", array_length_pos = 3.5)] Gdk.RGBA[] colors, Meta.GradientType style);
	[CCode (cheader_filename = "meta/main.h")]
	public static Gdk.Pixbuf gradient_create_simple (int width, int height, Gdk.RGBA from, Gdk.RGBA to, Meta.GradientType style);
	[CCode (cheader_filename = "meta/main.h")]
	public static unowned string gravity_to_string (int gravity);
	[CCode (cheader_filename = "meta/main.h")]
	public static bool is_debugging ();
	[CCode (cheader_filename = "meta/main.h")]
	public static bool is_syncing ();
	[CCode (cheader_filename = "meta/main.h")]
	public static bool is_verbose ();
	[CCode (cheader_filename = "meta/main.h")]
	public static uint later_add (Meta.LaterType when, owned GLib.SourceFunc func);
	[CCode (cheader_filename = "meta/main.h")]
	public static void later_remove (uint later_id);
	[CCode (cheader_filename = "meta/main.h")]
	public static void pop_no_msg_prefix ();
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_bell_is_audible ();
	[CCode (cheader_filename = "meta/main.h")]
	public static void prefs_change_workspace_name (int i, string name);
	[CCode (cheader_filename = "meta/main.h")]
	public static Meta.ActionTitlebar prefs_get_action_double_click_titlebar ();
	[CCode (cheader_filename = "meta/main.h")]
	public static Meta.ActionTitlebar prefs_get_action_middle_click_titlebar ();
	[CCode (cheader_filename = "meta/main.h")]
	public static Meta.ActionTitlebar prefs_get_action_right_click_titlebar ();
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_get_application_based ();
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_get_attach_modal_dialogs ();
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_get_auto_raise ();
	[CCode (cheader_filename = "meta/main.h")]
	public static int prefs_get_auto_raise_delay ();
	[CCode (cheader_filename = "meta/main.h")]
	public static void prefs_get_button_layout (Meta.ButtonLayout button_layout);
	[CCode (cheader_filename = "meta/main.h")]
	public static unowned string prefs_get_command (int i);
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_get_compositing_manager ();
	[CCode (cheader_filename = "meta/main.h")]
	public static int prefs_get_cursor_size ();
	[CCode (cheader_filename = "meta/main.h")]
	public static unowned string prefs_get_cursor_theme ();
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_get_disable_workarounds ();
	[CCode (cheader_filename = "meta/main.h")]
	public static int prefs_get_draggable_border_width ();
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_get_edge_tiling ();
	[CCode (cheader_filename = "meta/main.h")]
	public static Meta.FocusMode prefs_get_focus_mode ();
	[CCode (cheader_filename = "meta/main.h")]
	public static Meta.FocusNewWindows prefs_get_focus_new_windows ();
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_get_force_fullscreen ();
	[CCode (cheader_filename = "meta/main.h")]
	public static string prefs_get_gconf_key_for_command (int i);
	[CCode (cheader_filename = "meta/main.h")]
	public static unowned string prefs_get_gconf_key_for_terminal_command ();
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_get_gnome_accessibility ();
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_get_gnome_animations ();
	[CCode (cheader_filename = "meta/main.h")]
	public static void prefs_get_key_bindings (Meta.KeyPref bindings, int n_bindings);
	[CCode (cheader_filename = "meta/main.h")]
	public static Meta.KeyBindingAction prefs_get_keybinding_action (string name);
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_get_live_hidden_windows ();
	[CCode (cheader_filename = "meta/main.h")]
	public static uint prefs_get_mouse_button_menu ();
	[CCode (cheader_filename = "meta/main.h")]
	public static Meta.VirtualModifier prefs_get_mouse_button_mods ();
	[CCode (cheader_filename = "meta/main.h")]
	public static uint prefs_get_mouse_button_resize ();
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_get_no_tab_popup ();
	[CCode (cheader_filename = "meta/main.h")]
	public static int prefs_get_num_workspaces ();
	[CCode (cheader_filename = "meta/main.h")]
	public static void prefs_get_overlay_binding (Meta.KeyCombo combo);
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_get_raise_on_click ();
	[CCode (cheader_filename = "meta/main.h")]
	public static unowned string prefs_get_terminal_command ();
	[CCode (cheader_filename = "meta/main.h")]
	public static unowned string prefs_get_theme ();
	[CCode (cheader_filename = "meta/main.h")]
	public static unowned Pango.FontDescription prefs_get_titlebar_font ();
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_get_visual_bell ();
	[CCode (cheader_filename = "meta/main.h")]
	public static Meta.VisualBellType prefs_get_visual_bell_type ();
	[CCode (cheader_filename = "meta/main.h")]
	public static void prefs_get_window_binding (string name, uint keysym, Meta.VirtualModifier modifiers);
	[CCode (cheader_filename = "meta/main.h")]
	public static unowned string prefs_get_workspace_name (int i);
	[CCode (cheader_filename = "meta/main.h")]
	public static bool prefs_get_workspaces_only_on_primary ();
	[CCode (cheader_filename = "meta/main.h")]
	public static void prefs_init ();
	[CCode (cheader_filename = "meta/main.h")]
	public static void prefs_override_preference_location (string original_key, string new_key);
	[CCode (cheader_filename = "meta/main.h")]
	public static void prefs_set_compositing_manager (bool whether);
	[CCode (cheader_filename = "meta/main.h")]
	public static void prefs_set_force_fullscreen (bool whether);
	[CCode (cheader_filename = "meta/main.h")]
	public static void prefs_set_live_hidden_windows (bool whether);
	[CCode (cheader_filename = "meta/main.h")]
	public static void prefs_set_no_tab_popup (bool whether);
	[CCode (cheader_filename = "meta/main.h")]
	public static void prefs_set_num_workspaces (int n_workspaces);
	[CCode (cheader_filename = "meta/main.h")]
	public static void print_backtrace ();
	[CCode (cheader_filename = "meta/main.h")]
	public static void push_no_msg_prefix ();
	[CCode (cheader_filename = "meta/main.h")]
	public static void quit (Meta.ExitCode code);
	[CCode (cheader_filename = "meta/main.h")]
	public static Meta.Rectangle rect (int x, int y, int width, int height);
	[CCode (cheader_filename = "meta/main.h")]
	public static void remove_verbose_topic (Meta.DebugTopic topic);
	[CCode (cheader_filename = "meta/main.h")]
	public static void set_debugging (bool setting);
	[CCode (cheader_filename = "meta/main.h")]
	public static void set_replace_current_wm (bool setting);
	[CCode (cheader_filename = "meta/main.h")]
	public static void set_syncing (bool setting);
	[CCode (cheader_filename = "meta/main.h")]
	public static void set_verbose (bool setting);
	[CCode (cheader_filename = "meta/main.h")]
	public static int unsigned_long_equal (void* v1, void* v2);
	[CCode (cheader_filename = "meta/main.h")]
	public static uint unsigned_long_hash (void* v);
	[CCode (cheader_filename = "meta/main.h")]
	public static void init ();
	[CCode (cheader_filename = "meta/main.h")]
	public static int run ();
	[CCode (cheader_filename = "meta/main.h")]
	public static bool keybindings_set_custom_handler (string name, 
		KeyHandlerFunc handler);
	[CCode (cheader_filename = "meta/prefs.h")]
	public delegate void KeyHandlerFunc (Display display, Screen screen, Window window, 
		X.Event event, KeyBinding binding);
}
