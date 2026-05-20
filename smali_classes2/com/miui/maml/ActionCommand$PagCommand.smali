.class Lcom/miui/maml/ActionCommand$PagCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PagCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$PagCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "PagCommand"


# instance fields
.field private mBackgroundColorExp:Lcom/miui/maml/data/Expression;

.field private mBackgroundColorParser:Lcom/miui/maml/util/ColorParser;

.field private mCommand:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

.field private mExpH:Lcom/miui/maml/data/Expression;

.field private mExpW:Lcom/miui/maml/data/Expression;

.field private mFauxBoldExp:Lcom/miui/maml/data/Expression;

.field private mFauxItalicExp:Lcom/miui/maml/data/Expression;

.field private mFillColorExp:Lcom/miui/maml/data/Expression;

.field private mFillColorParser:Lcom/miui/maml/util/ColorParser;

.field private mFontFamilyExp:Lcom/miui/maml/data/Expression;

.field private mFontSizeExp:Lcom/miui/maml/data/Expression;

.field private mIndexExp:Lcom/miui/maml/data/Expression;

.field private mParamsExp:Lcom/miui/maml/data/Expression;

.field private mSrcType:Ljava/lang/String;

.field private mStrokeColorExp:Lcom/miui/maml/data/Expression;

.field private mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

.field private mStrokeWidthExp:Lcom/miui/maml/data/Expression;

.field private mTextExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 3738
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 3739
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const-string v0, "command"

    .line 3740
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "index"

    .line 3741
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mIndexExp:Lcom/miui/maml/data/Expression;

    const-string v1, "params"

    .line 3742
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mParamsExp:Lcom/miui/maml/data/Expression;

    const-string v1, "text"

    .line 3743
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mTextExp:Lcom/miui/maml/data/Expression;

    const-string v1, "fontSize"

    .line 3744
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFontSizeExp:Lcom/miui/maml/data/Expression;

    const-string v1, "fontFamily"

    .line 3745
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFontFamilyExp:Lcom/miui/maml/data/Expression;

    const-string v1, "fillColor"

    .line 3746
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFillColorExp:Lcom/miui/maml/data/Expression;

    const-string v1, "strokeColor"

    .line 3747
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mStrokeColorExp:Lcom/miui/maml/data/Expression;

    const-string v1, "strokeWidth"

    .line 3748
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mStrokeWidthExp:Lcom/miui/maml/data/Expression;

    const-string v1, "backgroundColor"

    .line 3749
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mBackgroundColorExp:Lcom/miui/maml/data/Expression;

    const-string v1, "fauxBold"

    .line 3750
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFauxBoldExp:Lcom/miui/maml/data/Expression;

    const-string v1, "fauxItalic"

    .line 3751
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFauxItalicExp:Lcom/miui/maml/data/Expression;

    const-string v1, "srcType"

    .line 3752
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mSrcType:Ljava/lang/String;

    const-string v1, "w"

    .line 3753
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mExpW:Lcom/miui/maml/data/Expression;

    const-string v1, "h"

    .line 3754
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mExpH:Lcom/miui/maml/data/Expression;

    .line 3756
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 p2, -0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "release"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x7

    goto :goto_0

    :sswitch_1
    const-string p1, "setProgress"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x6

    goto :goto_0

    :sswitch_2
    const-string p1, "replaceImage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x5

    goto :goto_0

    :sswitch_3
    const-string p1, "replaceText"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x4

    goto :goto_0

    :sswitch_4
    const-string p1, "pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x3

    goto :goto_0

    :sswitch_5
    const-string p1, "play"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_6
    const-string p1, "resume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_7
    const-string p1, "setLoopCount"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 3764
    :pswitch_0
    sget-object p1, Lcom/miui/maml/ActionCommand$PagCommand$CommandType;->RELEASE:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mCommand:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    goto :goto_1

    .line 3776
    :pswitch_1
    sget-object p1, Lcom/miui/maml/ActionCommand$PagCommand$CommandType;->SET_PROGRESS:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mCommand:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    goto :goto_1

    .line 3770
    :pswitch_2
    sget-object p1, Lcom/miui/maml/ActionCommand$PagCommand$CommandType;->REPLACE_IMAGE:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mCommand:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    goto :goto_1

    .line 3767
    :pswitch_3
    sget-object p1, Lcom/miui/maml/ActionCommand$PagCommand$CommandType;->REPLACE_TEXT:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mCommand:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    goto :goto_1

    .line 3758
    :pswitch_4
    sget-object p1, Lcom/miui/maml/ActionCommand$PagCommand$CommandType;->PAUSE:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mCommand:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    goto :goto_1

    .line 3761
    :pswitch_5
    sget-object p1, Lcom/miui/maml/ActionCommand$PagCommand$CommandType;->PLAY:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mCommand:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    goto :goto_1

    .line 3773
    :pswitch_6
    sget-object p1, Lcom/miui/maml/ActionCommand$PagCommand$CommandType;->RESUME:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mCommand:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    goto :goto_1

    .line 3779
    :pswitch_7
    sget-object p1, Lcom/miui/maml/ActionCommand$PagCommand$CommandType;->SET_LOOP_COUNT:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mCommand:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x59e6ad77 -> :sswitch_7
        -0x37b237d3 -> :sswitch_6
        0x348b34 -> :sswitch_5
        0x65825f6 -> :sswitch_4
        0x19a3f201 -> :sswitch_3
        0x1a429707 -> :sswitch_2
        0x3ae760af -> :sswitch_1
        0x41012807 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private replaceImage(Lcom/miui/maml/elements/pag/PagElement;)V
    .locals 6

    .line 3910
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mIndexExp:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_0

    return-void

    .line 3913
    :cond_0
    new-instance v0, Lcom/miui/maml/elements/pag/PagImageModel;

    invoke-direct {v0}, Lcom/miui/maml/elements/pag/PagImageModel;-><init>()V

    .line 3914
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mIndexExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_1

    .line 3915
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/miui/maml/elements/pag/PagImageModel;->index:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 3917
    iput v1, v0, Lcom/miui/maml/elements/pag/PagImageModel;->index:I

    .line 3919
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mParamsExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_2

    .line 3920
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagImageModel;->src:Ljava/lang/String;

    .line 3922
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mSrcType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3923
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mSrcType:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagImageModel;->srcType:Ljava/lang/String;

    .line 3925
    :cond_3
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mExpW:Lcom/miui/maml/data/Expression;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    if-eqz v1, :cond_4

    .line 3926
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/maml/elements/pag/PagImageModel;->width:D

    goto :goto_1

    .line 3928
    :cond_4
    iput-wide v2, v0, Lcom/miui/maml/elements/pag/PagImageModel;->width:D

    .line 3930
    :goto_1
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mExpH:Lcom/miui/maml/data/Expression;

    if-eqz p0, :cond_5

    .line 3931
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/maml/elements/pag/PagImageModel;->height:D

    goto :goto_2

    .line 3933
    :cond_5
    iput-wide v2, v0, Lcom/miui/maml/elements/pag/PagImageModel;->height:D

    .line 3935
    :goto_2
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/pag/PagElement;->replaceImage(Lcom/miui/maml/elements/pag/PagImageModel;)V

    return-void
.end method

.method private replaceImage(Lcom/miui/maml/elements/pag/PagImageElement;)V
    .locals 6

    .line 3988
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mIndexExp:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_0

    return-void

    .line 3991
    :cond_0
    new-instance v0, Lcom/miui/maml/elements/pag/PagImageModel;

    invoke-direct {v0}, Lcom/miui/maml/elements/pag/PagImageModel;-><init>()V

    .line 3992
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mIndexExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_1

    .line 3993
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/miui/maml/elements/pag/PagImageModel;->index:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 3995
    iput v1, v0, Lcom/miui/maml/elements/pag/PagImageModel;->index:I

    .line 3997
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mParamsExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_2

    .line 3998
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagImageModel;->src:Ljava/lang/String;

    .line 4000
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mSrcType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4001
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mSrcType:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagImageModel;->srcType:Ljava/lang/String;

    .line 4003
    :cond_3
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mExpW:Lcom/miui/maml/data/Expression;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    if-eqz v1, :cond_4

    .line 4004
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/maml/elements/pag/PagImageModel;->width:D

    goto :goto_1

    .line 4006
    :cond_4
    iput-wide v2, v0, Lcom/miui/maml/elements/pag/PagImageModel;->width:D

    .line 4008
    :goto_1
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mExpH:Lcom/miui/maml/data/Expression;

    if-eqz p0, :cond_5

    .line 4009
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/maml/elements/pag/PagImageModel;->height:D

    goto :goto_2

    .line 4011
    :cond_5
    iput-wide v2, v0, Lcom/miui/maml/elements/pag/PagImageModel;->height:D

    .line 4013
    :goto_2
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/pag/PagImageElement;->replaceImage(Lcom/miui/maml/elements/pag/PagImageModel;)V

    return-void
.end method

.method private replaceText(Lcom/miui/maml/elements/pag/PagElement;)V
    .locals 5

    .line 3861
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mIndexExp:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_0

    return-void

    .line 3864
    :cond_0
    new-instance v0, Lcom/miui/maml/elements/pag/PagTextModel;

    invoke-direct {v0}, Lcom/miui/maml/elements/pag/PagTextModel;-><init>()V

    .line 3865
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mIndexExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->index:I

    .line 3866
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mTextExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_1

    .line 3867
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->newText:Ljava/lang/String;

    .line 3869
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFontSizeExp:Lcom/miui/maml/data/Expression;

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_2

    .line 3870
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->fontSize:F

    goto :goto_0

    .line 3872
    :cond_2
    iput v2, v0, Lcom/miui/maml/elements/pag/PagTextModel;->strokeWidth:F

    .line 3874
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFontFamilyExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_3

    .line 3875
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->fontFamily:Ljava/lang/String;

    .line 3877
    :cond_3
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFillColorExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_4

    .line 3878
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 3879
    new-instance v3, Lcom/miui/maml/util/ColorParser;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFillColorParser:Lcom/miui/maml/util/ColorParser;

    .line 3880
    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->fillColorExp:Ljava/lang/String;

    .line 3881
    invoke-virtual {v3}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v1

    iput v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->fillColor:I

    .line 3883
    :cond_4
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mStrokeColorExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_5

    .line 3884
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 3885
    new-instance v3, Lcom/miui/maml/util/ColorParser;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

    .line 3886
    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->strokeColorExp:Ljava/lang/String;

    .line 3887
    invoke-virtual {v3}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v1

    iput v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->strokeColor:I

    .line 3889
    :cond_5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mStrokeWidthExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_6

    .line 3890
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->strokeWidth:F

    goto :goto_1

    .line 3892
    :cond_6
    iput v2, v0, Lcom/miui/maml/elements/pag/PagTextModel;->strokeWidth:F

    .line 3894
    :goto_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mBackgroundColorExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_7

    .line 3895
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 3896
    new-instance v2, Lcom/miui/maml/util/ColorParser;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mBackgroundColorParser:Lcom/miui/maml/util/ColorParser;

    .line 3897
    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->backgroundColorExp:Ljava/lang/String;

    .line 3898
    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v1

    iput v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->backgroundColor:I

    .line 3900
    :cond_7
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFauxBoldExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_8

    .line 3901
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->fauxBold:Ljava/lang/String;

    .line 3903
    :cond_8
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFauxItalicExp:Lcom/miui/maml/data/Expression;

    if-eqz p0, :cond_9

    .line 3904
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/maml/elements/pag/PagTextModel;->fauxItalic:Ljava/lang/String;

    .line 3906
    :cond_9
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/pag/PagElement;->replaceText(Lcom/miui/maml/elements/pag/PagTextModel;)V

    return-void
.end method

.method private replaceText(Lcom/miui/maml/elements/pag/PagImageElement;)V
    .locals 5

    .line 3939
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mIndexExp:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_0

    return-void

    .line 3942
    :cond_0
    new-instance v0, Lcom/miui/maml/elements/pag/PagTextModel;

    invoke-direct {v0}, Lcom/miui/maml/elements/pag/PagTextModel;-><init>()V

    .line 3943
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mIndexExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->index:I

    .line 3944
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mTextExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_1

    .line 3945
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->newText:Ljava/lang/String;

    .line 3947
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFontSizeExp:Lcom/miui/maml/data/Expression;

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_2

    .line 3948
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->fontSize:F

    goto :goto_0

    .line 3950
    :cond_2
    iput v2, v0, Lcom/miui/maml/elements/pag/PagTextModel;->strokeWidth:F

    .line 3952
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFontFamilyExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_3

    .line 3953
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->fontFamily:Ljava/lang/String;

    .line 3955
    :cond_3
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFillColorExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_4

    .line 3956
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 3957
    new-instance v3, Lcom/miui/maml/util/ColorParser;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFillColorParser:Lcom/miui/maml/util/ColorParser;

    .line 3958
    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->fillColorExp:Ljava/lang/String;

    .line 3959
    invoke-virtual {v3}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v1

    iput v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->fillColor:I

    .line 3961
    :cond_4
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mStrokeColorExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_5

    .line 3962
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 3963
    new-instance v3, Lcom/miui/maml/util/ColorParser;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

    .line 3964
    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->strokeColorExp:Ljava/lang/String;

    .line 3965
    invoke-virtual {v3}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v1

    iput v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->strokeColor:I

    .line 3967
    :cond_5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mStrokeWidthExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_6

    .line 3968
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->strokeWidth:F

    goto :goto_1

    .line 3970
    :cond_6
    iput v2, v0, Lcom/miui/maml/elements/pag/PagTextModel;->strokeWidth:F

    .line 3972
    :goto_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mBackgroundColorExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_7

    .line 3973
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 3974
    new-instance v2, Lcom/miui/maml/util/ColorParser;

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mBackgroundColorParser:Lcom/miui/maml/util/ColorParser;

    .line 3975
    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->backgroundColorExp:Ljava/lang/String;

    .line 3976
    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v1

    iput v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->backgroundColor:I

    .line 3978
    :cond_7
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFauxBoldExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_8

    .line 3979
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/pag/PagTextModel;->fauxBold:Ljava/lang/String;

    .line 3981
    :cond_8
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mFauxItalicExp:Lcom/miui/maml/data/Expression;

    if-eqz p0, :cond_9

    .line 3982
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/miui/maml/elements/pag/PagTextModel;->fauxItalic:Ljava/lang/String;

    .line 3984
    :cond_9
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/pag/PagImageElement;->replaceText(Lcom/miui/maml/elements/pag/PagTextModel;)V

    return-void
.end method


# virtual methods
.method public doPerform()V
    .locals 3

    .line 3788
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3793
    :cond_0
    instance-of v1, v0, Lcom/miui/maml/elements/pag/PagElement;

    if-eqz v1, :cond_1

    .line 3794
    check-cast v0, Lcom/miui/maml/elements/pag/PagElement;

    .line 3796
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$PagCommand$CommandType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mCommand:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 3819
    :pswitch_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mParamsExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int p0, v1

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/pag/PagElement;->setLoopCount(I)V

    goto/16 :goto_0

    .line 3816
    :pswitch_1
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mParamsExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/pag/PagElement;->setProgress(F)V

    goto :goto_0

    .line 3813
    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/maml/elements/pag/PagElement;->resumePagAnimation()V

    goto :goto_0

    .line 3810
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$PagCommand;->replaceImage(Lcom/miui/maml/elements/pag/PagElement;)V

    goto :goto_0

    .line 3807
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$PagCommand;->replaceText(Lcom/miui/maml/elements/pag/PagElement;)V

    goto :goto_0

    .line 3804
    :pswitch_5
    invoke-virtual {v0}, Lcom/miui/maml/elements/pag/PagElement;->releasePagAnimation()V

    goto :goto_0

    .line 3801
    :pswitch_6
    invoke-virtual {v0}, Lcom/miui/maml/elements/pag/PagElement;->pausePagAnimation()V

    goto :goto_0

    .line 3798
    :pswitch_7
    invoke-virtual {v0}, Lcom/miui/maml/elements/pag/PagElement;->playPagAnimation()V

    goto :goto_0

    .line 3824
    :cond_1
    instance-of v1, v0, Lcom/miui/maml/elements/pag/PagImageElement;

    if-eqz v1, :cond_2

    .line 3825
    check-cast v0, Lcom/miui/maml/elements/pag/PagImageElement;

    .line 3827
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$PagCommand$CommandType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mCommand:Lcom/miui/maml/ActionCommand$PagCommand$CommandType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 3850
    :pswitch_8
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mParamsExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int p0, v1

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/pag/PagImageElement;->setLoopCount(I)V

    goto :goto_0

    .line 3847
    :pswitch_9
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$PagCommand;->mParamsExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/pag/PagImageElement;->setProgress(F)V

    goto :goto_0

    .line 3844
    :pswitch_a
    invoke-virtual {v0}, Lcom/miui/maml/elements/pag/PagImageElement;->resumePagAnimation()V

    goto :goto_0

    .line 3841
    :pswitch_b
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$PagCommand;->replaceImage(Lcom/miui/maml/elements/pag/PagImageElement;)V

    goto :goto_0

    .line 3838
    :pswitch_c
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand$PagCommand;->replaceText(Lcom/miui/maml/elements/pag/PagImageElement;)V

    goto :goto_0

    .line 3835
    :pswitch_d
    invoke-virtual {v0}, Lcom/miui/maml/elements/pag/PagImageElement;->releasePagAnimation()V

    goto :goto_0

    .line 3832
    :pswitch_e
    invoke-virtual {v0}, Lcom/miui/maml/elements/pag/PagImageElement;->pausePagAnimation()V

    goto :goto_0

    .line 3829
    :pswitch_f
    invoke-virtual {v0}, Lcom/miui/maml/elements/pag/PagImageElement;->playPagAnimation()V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
