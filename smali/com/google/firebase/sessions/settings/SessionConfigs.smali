.class public final Lcom/google/firebase/sessions/settings/SessionConfigs;
.super Ljava/lang/Object;
.source "SettingsCache.kt"


# instance fields
.field private final cacheDuration:Ljava/lang/Integer;

.field private final cacheUpdatedTime:Ljava/lang/Long;

.field private final sessionEnabled:Ljava/lang/Boolean;

.field private final sessionRestartTimeout:Ljava/lang/Integer;

.field private final sessionSamplingRate:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionEnabled:Ljava/lang/Boolean;

    .line 34
    iput-object p2, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionSamplingRate:Ljava/lang/Double;

    .line 35
    iput-object p3, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionRestartTimeout:Ljava/lang/Integer;

    .line 36
    iput-object p4, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->cacheDuration:Ljava/lang/Integer;

    .line 37
    iput-object p5, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->cacheUpdatedTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/sessions/settings/SessionConfigs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/firebase/sessions/settings/SessionConfigs;

    iget-object v1, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionSamplingRate:Ljava/lang/Double;

    iget-object v3, p1, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionSamplingRate:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionRestartTimeout:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionRestartTimeout:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->cacheDuration:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/firebase/sessions/settings/SessionConfigs;->cacheDuration:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->cacheUpdatedTime:Ljava/lang/Long;

    iget-object p1, p1, Lcom/google/firebase/sessions/settings/SessionConfigs;->cacheUpdatedTime:Ljava/lang/Long;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCacheDuration()Ljava/lang/Integer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->cacheDuration:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getCacheUpdatedTime()Ljava/lang/Long;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->cacheUpdatedTime:Ljava/lang/Long;

    return-object p0
.end method

.method public final getSessionEnabled()Ljava/lang/Boolean;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getSessionRestartTimeout()Ljava/lang/Integer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionRestartTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getSessionSamplingRate()Ljava/lang/Double;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionSamplingRate:Ljava/lang/Double;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionEnabled:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionSamplingRate:Ljava/lang/Double;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionRestartTimeout:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->cacheDuration:Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->cacheUpdatedTime:Ljava/lang/Long;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionConfigs(sessionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionSamplingRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionSamplingRate:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionRestartTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->sessionRestartTimeout:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->cacheDuration:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheUpdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/firebase/sessions/settings/SessionConfigs;->cacheUpdatedTime:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
