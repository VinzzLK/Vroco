.class Lcom/miui/maml/LanguageHelper$Plurals;
.super Ljava/lang/Object;
.source "LanguageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/LanguageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Plurals"
.end annotation


# instance fields
.field PluralsName:Ljava/lang/String;

.field PluralsValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/miui/maml/LanguageHelper$Plurals;->PluralsName:Ljava/lang/String;

    .line 223
    iput-object p2, p0, Lcom/miui/maml/LanguageHelper$Plurals;->PluralsValue:Ljava/lang/String;

    return-void
.end method
