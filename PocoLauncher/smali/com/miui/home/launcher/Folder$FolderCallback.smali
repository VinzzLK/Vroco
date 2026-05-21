.class public interface abstract Lcom/miui/home/launcher/Folder$FolderCallback;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FolderCallback"
.end annotation


# virtual methods
.method public abstract deleteSelf()V
.end method

.method public getPreviewItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderPreviewIconView;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getPreviewPosition(Landroid/graphics/Rect;)F
.end method

.method public abstract loadItemIcons(Z)V
.end method

.method public loadItemIcons(ZZ)V
    .locals 0

    return-void
.end method

.method public abstract onClose()V
.end method

.method public abstract onOpen()V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public showPlaceHolderIconAnim(Z)V
    .locals 0

    return-void
.end method

.method public abstract showPreview(Z)V
.end method
