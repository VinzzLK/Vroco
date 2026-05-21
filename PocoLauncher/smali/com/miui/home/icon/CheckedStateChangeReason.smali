.class public Lcom/miui/home/icon/CheckedStateChangeReason;
.super Ljava/lang/Object;
.source "CheckedStateChangeReason.java"


# instance fields
.field private mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/miui/home/icon/CheckedStateChangeReason;->mReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/home/icon/CheckedStateChangeReason;->mReason:Ljava/lang/String;

    return-object p0
.end method
