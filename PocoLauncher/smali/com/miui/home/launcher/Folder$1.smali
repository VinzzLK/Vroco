.class Lcom/miui/home/launcher/Folder$1;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Folder;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/miui/home/launcher/Folder$1;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 344
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    const-string v0, "Folder"

    const-string v1, "handleMessage: MSG_LONG_CLICK"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    .line 348
    iget-object p0, p0, Lcom/miui/home/launcher/Folder$1;->this$0:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->handleItemLongClick(Landroid/view/View;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
