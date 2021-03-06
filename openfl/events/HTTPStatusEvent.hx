package openfl.events; #if !openfl_legacy


class HTTPStatusEvent extends Event {
	
	
	public static inline var HTTP_RESPONSE_STATUS = "httpResponseStatus";
	public static inline var HTTP_STATUS = "httpStatus";
	
	public var redirected:Bool;
	public var responseHeaders:Array<Dynamic>;
	public var responseURL:String;
	public var status (default, null):Int;
	
	
	public function new (type:String, bubbles:Bool = false, cancelable:Bool = false, status:Int = 0, redirected:Bool = false):Void {
		
		this.status = status;
		this.redirected = redirected;
		
		super (type, bubbles, cancelable);
		
	}
	
	
	public override function clone ():Event {
		
		var event = new HTTPStatusEvent (type, bubbles, status, redirected);
		event.target = target;
		event.currentTarget = currentTarget;
		#if !openfl_legacy
		event.eventPhase = eventPhase;
		#end
		return event;
		
	}
	
	
	public override function toString ():String {
		
		return __formatToString ("HTTPStatusEvent",  [ "type", "bubbles", "cancelable", "status", "redirected" ]);
		
	}
	
	
}


#else
typedef HTTPStatusEvent = openfl._legacy.events.HTTPStatusEvent;
#end