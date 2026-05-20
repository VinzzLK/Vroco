.class Lcom/miui/home/launcher/anim/FolderCreateBgAnim$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolderCreateBgAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/anim/FolderCreateBgAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim$2;->this$0:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 81
    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim$2;->this$0:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

    invoke-static {p1}, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->access$000(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim$2;->this$0:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

    invoke-static {p1}, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->access$000(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object p1, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim$2;->this$0:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

    invoke-static {p1}, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->access$000(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object p0, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim$2;->this$0:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

    invoke-static {p0}, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->access$200(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)Lcom/miui/home/launcher/CellLayout;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/CellLayout;->updateFolderCreationBgPosition([I)V

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
