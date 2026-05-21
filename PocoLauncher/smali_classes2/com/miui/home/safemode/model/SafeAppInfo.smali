.class public final Lcom/miui/home/safemode/model/SafeAppInfo;
.super Ljava/lang/Object;
.source "SafeAppInfo.kt"


# instance fields
.field private final info:Landroid/content/pm/LauncherActivityInfo;

.field private final resolveInfo:Landroid/content/pm/ResolveInfo;

.field private final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->info:Landroid/content/pm/LauncherActivityInfo;

    .line 9
    iput-object p2, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 10
    iput-object p3, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->user:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/home/safemode/model/SafeAppInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/home/safemode/model/SafeAppInfo;

    iget-object v1, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->info:Landroid/content/pm/LauncherActivityInfo;

    iget-object v3, p1, Lcom/miui/home/safemode/model/SafeAppInfo;->info:Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p1, Lcom/miui/home/safemode/model/SafeAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->user:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/miui/home/safemode/model/SafeAppInfo;->user:Landroid/os/UserHandle;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getInfo()Landroid/content/pm/LauncherActivityInfo;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->info:Landroid/content/pm/LauncherActivityInfo;

    return-object p0
.end method

.method public final getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public final getUser()Landroid/os/UserHandle;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->user:Landroid/os/UserHandle;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->info:Landroid/content/pm/LauncherActivityInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->user:Landroid/os/UserHandle;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafeAppInfo(info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->info:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resolveInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/safemode/model/SafeAppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
