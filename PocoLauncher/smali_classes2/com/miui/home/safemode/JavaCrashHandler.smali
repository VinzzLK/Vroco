.class public final Lcom/miui/home/safemode/JavaCrashHandler;
.super Ljava/lang/Object;
.source "JavaCrashHandler.kt"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final INSTANCE:Lcom/miui/home/safemode/JavaCrashHandler;

.field private static mCallback:Lcom/miui/home/safemode/ICrashHandler;

.field private static mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/safemode/JavaCrashHandler;

    invoke-direct {v0}, Lcom/miui/home/safemode/JavaCrashHandler;-><init>()V

    sput-object v0, Lcom/miui/home/safemode/JavaCrashHandler;->INSTANCE:Lcom/miui/home/safemode/JavaCrashHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Lcom/miui/home/safemode/ICrashHandler;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sput-object p1, Lcom/miui/home/safemode/JavaCrashHandler;->mCallback:Lcom/miui/home/safemode/ICrashHandler;

    .line 9
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    sput-object p1, Lcom/miui/home/safemode/JavaCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 10
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "t"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "e"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object p0, Lcom/miui/home/safemode/JavaCrashHandler;->mCallback:Lcom/miui/home/safemode/ICrashHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/miui/home/safemode/ICrashHandler;->onUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 16
    sget-object p0, Lcom/miui/home/safemode/JavaCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
