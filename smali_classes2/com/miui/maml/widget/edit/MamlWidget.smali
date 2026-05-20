.class public final Lcom/miui/maml/widget/edit/MamlWidget;
.super Ljava/lang/Object;
.source "MamlResource.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final customEditLink:Ljava/lang/String;

.field private final darkPreviewPath:Ljava/lang/String;

.field private final editable:Z

.field private final info:Lcom/miui/maml/widget/edit/MamlResource;

.field private final previewPath:Ljava/lang/String;

.field private final resPath:Ljava/lang/String;

.field private final xy:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/widget/edit/MamlResource;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/maml/widget/edit/MamlResource;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewPath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->info:Lcom/miui/maml/widget/edit/MamlResource;

    .line 38
    iput-object p2, p0, Lcom/miui/maml/widget/edit/MamlWidget;->xy:Landroid/util/Pair;

    .line 39
    iput-object p3, p0, Lcom/miui/maml/widget/edit/MamlWidget;->resPath:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/miui/maml/widget/edit/MamlWidget;->previewPath:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/miui/maml/widget/edit/MamlWidget;->darkPreviewPath:Ljava/lang/String;

    .line 42
    iput-boolean p6, p0, Lcom/miui/maml/widget/edit/MamlWidget;->editable:Z

    .line 43
    iput-object p7, p0, Lcom/miui/maml/widget/edit/MamlWidget;->customEditLink:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/widget/edit/MamlResource;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p7

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 36
    invoke-direct/range {v1 .. v8}, Lcom/miui/maml/widget/edit/MamlWidget;-><init>(Lcom/miui/maml/widget/edit/MamlResource;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/maml/widget/edit/MamlWidget;Lcom/miui/maml/widget/edit/MamlResource;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lcom/miui/maml/widget/edit/MamlWidget;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->info:Lcom/miui/maml/widget/edit/MamlResource;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/miui/maml/widget/edit/MamlWidget;->xy:Landroid/util/Pair;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/miui/maml/widget/edit/MamlWidget;->resPath:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/miui/maml/widget/edit/MamlWidget;->previewPath:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/miui/maml/widget/edit/MamlWidget;->darkPreviewPath:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-boolean p6, p0, Lcom/miui/maml/widget/edit/MamlWidget;->editable:Z

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/miui/maml/widget/edit/MamlWidget;->customEditLink:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/miui/maml/widget/edit/MamlWidget;->copy(Lcom/miui/maml/widget/edit/MamlResource;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/miui/maml/widget/edit/MamlWidget;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/miui/maml/widget/edit/MamlResource;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->info:Lcom/miui/maml/widget/edit/MamlResource;

    return-object p0
.end method

.method public final component2()Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->xy:Landroid/util/Pair;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->resPath:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->previewPath:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->darkPreviewPath:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->editable:Z

    return p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->customEditLink:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Lcom/miui/maml/widget/edit/MamlResource;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/miui/maml/widget/edit/MamlWidget;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/maml/widget/edit/MamlResource;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/maml/widget/edit/MamlWidget;"
        }
    .end annotation

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "xy"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resPath"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "previewPath"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/miui/maml/widget/edit/MamlWidget;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/miui/maml/widget/edit/MamlWidget;-><init>(Lcom/miui/maml/widget/edit/MamlResource;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/maml/widget/edit/MamlWidget;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/maml/widget/edit/MamlWidget;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->info:Lcom/miui/maml/widget/edit/MamlResource;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/MamlWidget;->info:Lcom/miui/maml/widget/edit/MamlResource;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->xy:Landroid/util/Pair;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/MamlWidget;->xy:Landroid/util/Pair;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->resPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/MamlWidget;->resPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->previewPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/MamlWidget;->previewPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->darkPreviewPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/MamlWidget;->darkPreviewPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->editable:Z

    iget-boolean v3, p1, Lcom/miui/maml/widget/edit/MamlWidget;->editable:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->customEditLink:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/maml/widget/edit/MamlWidget;->customEditLink:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCustomEditLink()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->customEditLink:Ljava/lang/String;

    return-object p0
.end method

.method public final getDarkPreviewPath()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->darkPreviewPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getEditable()Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->editable:Z

    return p0
.end method

.method public final getInfo()Lcom/miui/maml/widget/edit/MamlResource;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->info:Lcom/miui/maml/widget/edit/MamlResource;

    return-object p0
.end method

.method public final getPreviewPath()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->previewPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getResPath()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->resPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getXy()Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->xy:Landroid/util/Pair;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->info:Lcom/miui/maml/widget/edit/MamlResource;

    invoke-virtual {v0}, Lcom/miui/maml/widget/edit/MamlResource;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->xy:Landroid/util/Pair;

    invoke-virtual {v1}, Landroid/util/Pair;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->resPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->previewPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->darkPreviewPath:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->editable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->customEditLink:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MamlWidget(info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->info:Lcom/miui/maml/widget/edit/MamlResource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", xy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->xy:Landroid/util/Pair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->resPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", previewPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->previewPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", darkPreviewPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->darkPreviewPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", editable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/maml/widget/edit/MamlWidget;->editable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", customEditLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/maml/widget/edit/MamlWidget;->customEditLink:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
