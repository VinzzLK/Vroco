.class public Lcom/miui/home/launcher/overlay/assistant/AssistantColdStartMessage;
.super Ljava/lang/Object;
.source "AssistantColdStartMessage.java"


# instance fields
.field private final mColdStartOptimize:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantColdStartMessage;->mColdStartOptimize:Z

    return-void
.end method


# virtual methods
.method public isColdStartOptimize()Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantColdStartMessage;->mColdStartOptimize:Z

    return p0
.end method
