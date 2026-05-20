.class public final Lcom/miui/home/launcher/folder/AppPredictItem;
.super Ljava/lang/Object;
.source "AppPredictItem.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private is_xspace:Z

.field private package_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v0}, Lcom/miui/home/launcher/folder/AppPredictItem;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "package_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->package_name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->is_xspace:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/AppPredictItem;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/home/launcher/folder/AppPredictItem;Ljava/lang/String;ZILjava/lang/Object;)Lcom/miui/home/launcher/folder/AppPredictItem;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->package_name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->is_xspace:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/folder/AppPredictItem;->copy(Ljava/lang/String;Z)Lcom/miui/home/launcher/folder/AppPredictItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->package_name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->is_xspace:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;Z)Lcom/miui/home/launcher/folder/AppPredictItem;
    .locals 0

    const-string p0, "package_name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/miui/home/launcher/folder/AppPredictItem;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/AppPredictItem;-><init>(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/launcher/folder/AppPredictItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/launcher/folder/AppPredictItem;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->package_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/home/launcher/folder/AppPredictItem;->package_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->is_xspace:Z

    iget-boolean p1, p1, Lcom/miui/home/launcher/folder/AppPredictItem;->is_xspace:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPackage_name()Ljava/lang/String;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->package_name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->package_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->is_xspace:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final is_xspace()Z
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->is_xspace:Z

    return p0
.end method

.method public final setPackage_name(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->package_name:Ljava/lang/String;

    return-void
.end method

.method public final set_xspace(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->is_xspace:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppPredictItem(package_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", is_xspace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/AppPredictItem;->is_xspace:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
