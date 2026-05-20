.class Landroid/view/MiuiGestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "MiuiGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MiuiGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/MiuiGestureDetector;


# direct methods
.method constructor <init>(Landroid/view/MiuiGestureDetector;)V
    .locals 0

    .line 250
    iput-object p1, p0, Landroid/view/MiuiGestureDetector$GestureHandler;->this$0:Landroid/view/MiuiGestureDetector;

    .line 251
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/view/MiuiGestureDetector;Landroid/os/Handler;)V
    .locals 0

    .line 254
    iput-object p1, p0, Landroid/view/MiuiGestureDetector$GestureHandler;->this$0:Landroid/view/MiuiGestureDetector;

    .line 255
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 281
    iget-object p0, p0, Landroid/view/MiuiGestureDetector$GestureHandler;->this$0:Landroid/view/MiuiGestureDetector;

    invoke-static {p0}, Landroid/view/MiuiGestureDetector;->access$600(Landroid/view/MiuiGestureDetector;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "this operation will not be recognized as a valid double-click."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_1
    iget-object p1, p0, Landroid/view/MiuiGestureDetector$GestureHandler;->this$0:Landroid/view/MiuiGestureDetector;

    invoke-static {p1}, Landroid/view/MiuiGestureDetector;->access$300(Landroid/view/MiuiGestureDetector;)Landroid/view/MiuiGestureDetector$OnDoubleTapListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 272
    iget-object p1, p0, Landroid/view/MiuiGestureDetector$GestureHandler;->this$0:Landroid/view/MiuiGestureDetector;

    invoke-static {p1}, Landroid/view/MiuiGestureDetector;->access$400(Landroid/view/MiuiGestureDetector;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 273
    iget-object p1, p0, Landroid/view/MiuiGestureDetector$GestureHandler;->this$0:Landroid/view/MiuiGestureDetector;

    invoke-static {p1}, Landroid/view/MiuiGestureDetector;->access$300(Landroid/view/MiuiGestureDetector;)Landroid/view/MiuiGestureDetector$OnDoubleTapListener;

    move-result-object p1

    iget-object p0, p0, Landroid/view/MiuiGestureDetector$GestureHandler;->this$0:Landroid/view/MiuiGestureDetector;

    invoke-static {p0}, Landroid/view/MiuiGestureDetector;->access$000(Landroid/view/MiuiGestureDetector;)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MiuiGestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 275
    :cond_2
    iget-object p0, p0, Landroid/view/MiuiGestureDetector$GestureHandler;->this$0:Landroid/view/MiuiGestureDetector;

    invoke-static {p0, v1}, Landroid/view/MiuiGestureDetector;->access$502(Landroid/view/MiuiGestureDetector;Z)Z

    goto :goto_0

    .line 266
    :cond_3
    iget-object p0, p0, Landroid/view/MiuiGestureDetector$GestureHandler;->this$0:Landroid/view/MiuiGestureDetector;

    invoke-static {p0}, Landroid/view/MiuiGestureDetector;->access$200(Landroid/view/MiuiGestureDetector;)V

    goto :goto_0

    .line 262
    :cond_4
    iget-object p1, p0, Landroid/view/MiuiGestureDetector$GestureHandler;->this$0:Landroid/view/MiuiGestureDetector;

    invoke-static {p1}, Landroid/view/MiuiGestureDetector;->access$100(Landroid/view/MiuiGestureDetector;)Landroid/view/MiuiGestureDetector$OnGestureListener;

    move-result-object p1

    iget-object p0, p0, Landroid/view/MiuiGestureDetector$GestureHandler;->this$0:Landroid/view/MiuiGestureDetector;

    invoke-static {p0}, Landroid/view/MiuiGestureDetector;->access$000(Landroid/view/MiuiGestureDetector;)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MiuiGestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    :cond_5
    :goto_0
    return-void
.end method
