.class Lcom/miui/home/launcher/shortcuts/ShortcutMenu$RemoveProgressIconHideHandler;
.super Ljava/lang/Object;
.source "ShortcutMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/shortcuts/ShortcutMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveProgressIconHideHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$RemoveProgressIconHideHandler;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;Lcom/miui/home/launcher/shortcuts/ShortcutMenu$1;)V
    .locals 0

    .line 763
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$RemoveProgressIconHideHandler;-><init>(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/RemoveProgressIconHideShortcutMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 766
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/RemoveProgressIconHideShortcutMessage;->getView()Landroid/view/View;

    move-result-object p1

    .line 767
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$RemoveProgressIconHideHandler;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->access$200(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;Landroid/view/View;)V

    return-void
.end method
