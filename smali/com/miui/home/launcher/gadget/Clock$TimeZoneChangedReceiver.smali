.class Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeZoneChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Clock;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/gadget/Clock;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/gadget/Clock;Lcom/miui/home/launcher/gadget/Clock$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;-><init>(Lcom/miui/home/launcher/gadget/Clock;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.home.launcher.gadget.Clock"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/home/launcher/gadget/Clock;->mCalendar:Ljava/util/Calendar;

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-static {p1}, Lcom/miui/home/launcher/gadget/Clock;->access$000(Lcom/miui/home/launcher/gadget/Clock;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/Clock$TimeZoneChangedReceiver;->this$0:Lcom/miui/home/launcher/gadget/Clock;

    iget-object p1, p0, Lcom/miui/home/launcher/gadget/Clock;->mClockStyle:Lcom/miui/home/launcher/gadget/Clock$ClockStyle;

    if-eqz p1, :cond_1

    .line 135
    invoke-static {p0}, Lcom/miui/home/launcher/gadget/Clock;->access$100(Lcom/miui/home/launcher/gadget/Clock;)V

    :cond_1
    return-void
.end method
