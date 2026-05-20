.class public Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;
.super Ljava/lang/Object;
.source "FolderStateChangedMessage.java"


# instance fields
.field private isFromEnterPreview:Z

.field private mUpdatePaddingReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;->mUpdatePaddingReason:I

    return-void
.end method


# virtual methods
.method public getMessage()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;->mUpdatePaddingReason:I

    return p0
.end method

.method public isFromEnterPreview()Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;->isFromEnterPreview:Z

    return p0
.end method

.method public setFromEnterPreview(Z)Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;->isFromEnterPreview:Z

    return-object p0
.end method
