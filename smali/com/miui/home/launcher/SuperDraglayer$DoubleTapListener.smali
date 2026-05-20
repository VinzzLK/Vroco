.class public Lcom/miui/home/launcher/SuperDraglayer$DoubleTapListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SuperDraglayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SuperDraglayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoubleTapListener"
.end annotation


# instance fields
.field private mFirstDownEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/miui/home/launcher/SuperDraglayer;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/SuperDraglayer;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$DoubleTapListener;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$DoubleTapListener;->mFirstDownEvent:Landroid/view/MotionEvent;

    .line 145
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDoubleTapLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer$DoubleTapListener;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    iget-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer$DoubleTapListener;->mFirstDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SuperDraglayer;->tapedEmptyPosition(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer$DoubleTapListener;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SuperDraglayer;->tapedEmptyPosition(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v0, 0xa

    const-string v1, "com.miui.app.ExtraStatusBarManager.extra_TOGGLE_ID"

    .line 155
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer$DoubleTapListener;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    invoke-static {v0}, Lcom/miui/home/launcher/SuperDraglayer;->access$000(Lcom/miui/home/launcher/SuperDraglayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDoubleClick()V

    const-string p1, "Launcher.DragLayer"

    const-string v0, "onDoubleTapLockScreen"

    .line 158
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_0
    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer$DoubleTapListener;->mFirstDownEvent:Landroid/view/MotionEvent;

    return p1
.end method
