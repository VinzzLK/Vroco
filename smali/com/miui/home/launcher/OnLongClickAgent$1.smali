.class Lcom/miui/home/launcher/OnLongClickAgent$1;
.super Ljava/lang/Object;
.source "OnLongClickAgent.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/OnLongClickAgent;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/OnLongClickAgent;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/miui/home/launcher/OnLongClickAgent$1;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 76
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/OnLongClickAgent$1;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {p1}, Lcom/miui/home/launcher/OnLongClickAgent;->access$000(Lcom/miui/home/launcher/OnLongClickAgent;)Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p0, p0, Lcom/miui/home/launcher/OnLongClickAgent$1;->this$0:Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-static {p0}, Lcom/miui/home/launcher/OnLongClickAgent;->access$000(Lcom/miui/home/launcher/OnLongClickAgent;)Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/OnLongClickAgent$CheckForLongPress;->run()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
