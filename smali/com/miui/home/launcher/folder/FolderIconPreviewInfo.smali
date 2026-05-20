.class public final Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;
.super Ljava/lang/Object;
.source "FolderIconPreviewInfo.kt"


# instance fields
.field private final groupRect:Landroid/graphics/Rect;

.field private final height:I

.field private final rect:Landroid/graphics/Rect;

.field private final screenX:I

.field private final screenY:I

.field private final width:I


# direct methods
.method public constructor <init>(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupRect"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenX:I

    .line 10
    iput p2, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenY:I

    .line 11
    iput p3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->width:I

    .line 12
    iput p4, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->height:I

    .line 13
    iput-object p5, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->rect:Landroid/graphics/Rect;

    .line 14
    iput-object p6, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->groupRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenX:I

    iget v3, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenX:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenY:I

    iget v3, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenY:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->width:I

    iget v3, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->width:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->height:I

    iget v3, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->height:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->rect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->rect:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->groupRect:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->groupRect:Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getGroupRect()Landroid/graphics/Rect;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->groupRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->width:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenX:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenY:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->groupRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderIconPreviewInfo(screenX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->screenY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", groupRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewInfo;->groupRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
