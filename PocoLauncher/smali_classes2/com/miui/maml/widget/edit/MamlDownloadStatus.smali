.class public final Lcom/miui/maml/widget/edit/MamlDownloadStatus;
.super Ljava/lang/Object;
.source "MamlDownloadStatus.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final errorMsg:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final mamlVersion:I

.field private final progressPercent:I

.field private final state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    .line 30
    iput p3, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    .line 31
    iput p4, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    .line 32
    iput-object p5, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/maml/widget/edit/MamlDownloadStatus;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/Object;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->copy(Ljava/lang/String;IIILjava/lang/String;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;IIILjava/lang/String;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;
    .locals 6

    const-string p0, "id"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    iget v3, p1, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    iget v3, p1, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    iget v3, p1, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getMamlVersion()I
    .locals 0

    .line 29
    iget p0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    return p0
.end method

.method public final getProgressPercent()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    return p0
.end method

.method public final getState()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MamlDownloadStatus(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mamlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progressPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
