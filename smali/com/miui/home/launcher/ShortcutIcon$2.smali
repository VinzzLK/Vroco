.class Lcom/miui/home/launcher/ShortcutIcon$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ShortcutIcon;->animateIconMessageScale([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$2;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 835
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$2;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/ShortcutIcon;->access$200(Lcom/miui/home/launcher/ShortcutIcon;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 836
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$2;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutIcon;->mIconMessageParams:Lcom/miui/home/launcher/IconMessageRender$DrawParams;

    invoke-virtual {p1}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->resetMessageBitmap()V

    .line 837
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$2;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->access$302(Lcom/miui/home/launcher/ShortcutIcon;I)I

    .line 839
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon$2;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->access$402(Lcom/miui/home/launcher/ShortcutIcon;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
