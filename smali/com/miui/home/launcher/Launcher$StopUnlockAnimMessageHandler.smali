.class Lcom/miui/home/launcher/Launcher$StopUnlockAnimMessageHandler;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopUnlockAnimMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 12002
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$StopUnlockAnimMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 12002
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$StopUnlockAnimMessageHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/StopUnlockAnimMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 12005
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$StopUnlockAnimMessageHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$8100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->stopAnimation()V

    return-void
.end method
