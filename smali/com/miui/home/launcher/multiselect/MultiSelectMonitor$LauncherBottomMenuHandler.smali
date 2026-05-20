.class Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;
.super Ljava/lang/Object;
.source "MultiSelectMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherBottomMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$1;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;-><init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;->isShow()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$602(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Z)Z

    .line 186
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$LauncherBottomMenuHandler;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/LauncherBottomMenuMessage;->isShow()Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->access$700(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;ZZ)V

    return-void
.end method
