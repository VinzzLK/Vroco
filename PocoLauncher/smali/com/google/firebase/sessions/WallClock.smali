.class public final Lcom/google/firebase/sessions/WallClock;
.super Ljava/lang/Object;
.source "TimeProvider.kt"

# interfaces
.implements Lcom/google/firebase/sessions/TimeProvider;


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/WallClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/WallClock;

    invoke-direct {v0}, Lcom/google/firebase/sessions/WallClock;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/WallClock;->INSTANCE:Lcom/google/firebase/sessions/WallClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeUs()J
    .locals 4

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method
