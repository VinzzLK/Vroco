.class Lcom/miui/home/launcher/ItemIcon$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ItemIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ItemIcon;->animateIconMessageScale([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ItemIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ItemIcon;)V
    .locals 0

    .line 1052
    iput-object p1, p0, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1055
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/ItemIcon;->access$000(Lcom/miui/home/launcher/ItemIcon;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1056
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/ItemIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {p1}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->resetMessageBitmap()V

    .line 1057
    iget-object p1, p0, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/miui/home/launcher/ItemIcon;->access$102(Lcom/miui/home/launcher/ItemIcon;I)I

    .line 1059
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon$1;->this$0:Lcom/miui/home/launcher/ItemIcon;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->access$202(Lcom/miui/home/launcher/ItemIcon;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
