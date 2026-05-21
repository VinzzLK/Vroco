.class public final synthetic Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/ShortcutInfo;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;ILcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    iput p2, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$$ExternalSyntheticLambda1;->f$2:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    iget v1, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2$$ExternalSyntheticLambda1;->f$2:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->$r8$lambda$uHX9VqDDVVyNoTvwz28ZuZnTxPo(Lcom/miui/home/launcher/ShortcutInfo;ILcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
