.class public Lcom/miui/home/launcher/common/messages/LauncherLoadingState;
.super Ljava/lang/Object;
.source "LauncherLoadingState.java"


# instance fields
.field private final mReason:Ljava/lang/String;

.field private final mStartLoading:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/miui/home/launcher/common/messages/LauncherLoadingState;->mReason:Ljava/lang/String;

    .line 11
    iput-boolean p2, p0, Lcom/miui/home/launcher/common/messages/LauncherLoadingState;->mStartLoading:Z

    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/miui/home/launcher/common/messages/LauncherLoadingState;->mReason:Ljava/lang/String;

    return-object p0
.end method

.method public isStartLoading()Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/miui/home/launcher/common/messages/LauncherLoadingState;->mStartLoading:Z

    return p0
.end method
