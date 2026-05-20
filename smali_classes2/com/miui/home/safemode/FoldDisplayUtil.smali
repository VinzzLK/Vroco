.class Lcom/miui/home/safemode/FoldDisplayUtil;
.super Ljava/lang/Object;
.source "FoldDisplayUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/safemode/FoldDisplayUtil$FoldDisplayChangeListener;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$wxi7MOWzCBC3Mfag5G1B6L5WQlg(Lcom/miui/home/safemode/FoldDisplayUtil$FoldDisplayChangeListener;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/safemode/FoldDisplayUtil;->lambda$registerFoldDisplayChange$0(Lcom/miui/home/safemode/FoldDisplayUtil$FoldDisplayChangeListener;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static createCallback(Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 4

    .line 15
    :try_start_0
    const-class v0, Lcom/miui/launcher/common/FoldDisplayChangeListener;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 17
    invoke-static {v1, v2, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "FoldDisplayUtil"

    const-string v1, "createCallback: "

    .line 23
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$registerFoldDisplayChange$0(Lcom/miui/home/safemode/FoldDisplayUtil$FoldDisplayChangeListener;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onDisplayFoldChanged"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    array-length p1, p3

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 33
    aget-object p2, p3, p1

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    aget-object v0, p3, p2

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 34
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/miui/home/safemode/FoldDisplayUtil$FoldDisplayChangeListener;->onDisplayFoldChanged(IZ)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static registerFoldDisplayChange(Lcom/miui/home/safemode/FoldDisplayUtil$FoldDisplayChangeListener;)V
    .locals 7

    .line 29
    new-instance v0, Lcom/miui/home/safemode/FoldDisplayUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/safemode/FoldDisplayUtil$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/safemode/FoldDisplayUtil$FoldDisplayChangeListener;)V

    invoke-static {v0}, Lcom/miui/home/safemode/FoldDisplayUtil;->createCallback(Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 40
    :try_start_0
    const-class v0, Lcom/miui/launcher/common/FoldDisplayChangeListener;

    .line 42
    const-class v1, Lcom/miui/launcher/common/FoldDisplayChangeManager;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "addAndStartMonitor"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v2

    .line 46
    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v2

    .line 47
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FoldDisplayUtil"

    const-string v1, "registerFoldDisplayChange: "

    .line 49
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
