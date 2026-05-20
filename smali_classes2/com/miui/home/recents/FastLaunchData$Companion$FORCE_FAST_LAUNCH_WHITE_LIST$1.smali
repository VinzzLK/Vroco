.class public final Lcom/miui/home/recents/FastLaunchData$Companion$FORCE_FAST_LAUNCH_WHITE_LIST$1;
.super Ljava/util/ArrayList;
.source "FastLaunchData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/FastLaunchData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/16 v0, 0xb

    .line 21
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "com.cs090.android"

    .line 23
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.baidu.netdisk"

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.tencent.news"

    .line 25
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.dianping.v1"

    .line 26
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.chinamworld.main"

    .line 27
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "cn.wps.moffice_eng"

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.netease.party.mi"

    .line 29
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.sohu.inputmethod.sogou"

    .line 30
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.miui.securitymanager"

    .line 31
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.xiaomi.gamecenter"

    .line 32
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.thememanager"

    .line 33
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 21
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/FastLaunchData$Companion$FORCE_FAST_LAUNCH_WHITE_LIST$1;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge contains(Ljava/lang/String;)Z
    .locals 0

    .line 21
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge getSize()I
    .locals 0

    .line 21
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 21
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/FastLaunchData$Companion$FORCE_FAST_LAUNCH_WHITE_LIST$1;->indexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge indexOf(Ljava/lang/String;)I
    .locals 0

    .line 21
    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 21
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/FastLaunchData$Companion$FORCE_FAST_LAUNCH_WHITE_LIST$1;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge lastIndexOf(Ljava/lang/String;)I
    .locals 0

    .line 21
    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge remove(I)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/FastLaunchData$Companion$FORCE_FAST_LAUNCH_WHITE_LIST$1;->removeAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 21
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/FastLaunchData$Companion$FORCE_FAST_LAUNCH_WHITE_LIST$1;->remove(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge remove(Ljava/lang/String;)Z
    .locals 0

    .line 21
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge removeAt(I)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final bridge size()I
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/miui/home/recents/FastLaunchData$Companion$FORCE_FAST_LAUNCH_WHITE_LIST$1;->getSize()I

    move-result p0

    return p0
.end method
