.class Lcom/miui/home/launcher/Launcher$LayoutPreviewHandler;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutPreviewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 10643
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$LayoutPreviewHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0

    .line 10643
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$LayoutPreviewHandler;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LayoutPreviewDisplay;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 10646
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$LayoutPreviewHandler;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance p1, Lcom/miui/home/launcher/EditStateChangeReason;

    const-string v0, "display_layout_preview"

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/EditStateChangeReason;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(ILcom/miui/home/launcher/EditStateChangeReason;)V

    return-void
.end method
