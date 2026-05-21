.class final Lcom/miui/home/launcher/folder/FolderIcon2x2_9$showPlaceHolderIconAnim$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FolderIcon2x2_9.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/FolderIcon2x2_9;->showPlaceHolderIconAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isShow:Z

.field final synthetic this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2_9;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/folder/FolderIcon2x2_9;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_9$showPlaceHolderIconAnim$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2_9;

    iput-boolean p2, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_9$showPlaceHolderIconAnim$1;->$isShow:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_9$showPlaceHolderIconAnim$1;->this$0:Lcom/miui/home/launcher/folder/FolderIcon2x2_9;

    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_9$showPlaceHolderIconAnim$1;->$isShow:Z

    invoke-static {v0, p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2_9;->access$getFolderPreviewAlpha(Lcom/miui/home/launcher/folder/FolderIcon2x2_9;Z)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    instance-of p0, p1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/folder/FolderIconPlaceholderDrawable;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2_9$showPlaceHolderIconAnim$1;->invoke(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
