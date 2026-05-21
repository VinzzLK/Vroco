.class public Lcom/miui/home/launcher/common/messages/AccessibilityMessage;
.super Ljava/lang/Object;
.source "AccessibilityMessage.java"


# instance fields
.field private final mReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/miui/home/launcher/common/messages/AccessibilityMessage;->mReason:I

    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 0

    .line 15
    iget p0, p0, Lcom/miui/home/launcher/common/messages/AccessibilityMessage;->mReason:I

    return p0
.end method
