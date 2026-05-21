.class Lcom/miui/home/recents/ScreenPinnedInputConsumer$1;
.super Ljava/lang/Object;
.source "ScreenPinnedInputConsumer.java"

# interfaces
.implements Lcom/miui/home/recents/util/MotionPauseDetector$OnMotionPauseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/ScreenPinnedInputConsumer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/ScreenPinnedInputConsumer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/ScreenPinnedInputConsumer;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/miui/home/recents/ScreenPinnedInputConsumer$1;->this$0:Lcom/miui/home/recents/ScreenPinnedInputConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionPauseDetected()V
    .locals 1

    const-string p0, "ScreenPinnedInputConsumer"

    const-string v0, "onMotionPause"

    .line 35
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object p0, Lcom/miui/home/recents/ScreenPinnedHelper;->INSTANCE:Lcom/miui/home/recents/ScreenPinnedHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/ScreenPinnedHelper;->stopScreenPinning(Z)V

    return-void
.end method
