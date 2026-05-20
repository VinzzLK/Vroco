.class public final Lcom/miui/home/recents/event/FolderScrollEventInfo;
.super Lcom/miui/home/recents/event/EventInfo;
.source "FolderScrollEvent.kt"


# instance fields
.field private final folderGridViewBottom:I

.field private final folderGridViewTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/miui/home/recents/event/EventInfo;-><init>()V

    iput p1, p0, Lcom/miui/home/recents/event/FolderScrollEventInfo;->folderGridViewTop:I

    iput p2, p0, Lcom/miui/home/recents/event/FolderScrollEventInfo;->folderGridViewBottom:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/recents/event/FolderScrollEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/recents/event/FolderScrollEventInfo;

    iget v1, p0, Lcom/miui/home/recents/event/FolderScrollEventInfo;->folderGridViewTop:I

    iget v3, p1, Lcom/miui/home/recents/event/FolderScrollEventInfo;->folderGridViewTop:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/miui/home/recents/event/FolderScrollEventInfo;->folderGridViewBottom:I

    iget p1, p1, Lcom/miui/home/recents/event/FolderScrollEventInfo;->folderGridViewBottom:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFolderGridViewBottom()I
    .locals 0

    .line 10
    iget p0, p0, Lcom/miui/home/recents/event/FolderScrollEventInfo;->folderGridViewBottom:I

    return p0
.end method

.method public final getFolderGridViewTop()I
    .locals 0

    .line 10
    iget p0, p0, Lcom/miui/home/recents/event/FolderScrollEventInfo;->folderGridViewTop:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/miui/home/recents/event/FolderScrollEventInfo;->folderGridViewTop:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/miui/home/recents/event/FolderScrollEventInfo;->folderGridViewBottom:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderScrollEventInfo(folderGridViewTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/event/FolderScrollEventInfo;->folderGridViewTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", folderGridViewBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/recents/event/FolderScrollEventInfo;->folderGridViewBottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
