.class public Lcom/samsung/android/text/Semitic;
.super Ljava/lang/Object;
.source "Semitic.java"


# static fields
.field public static final ISO639_ARABIC:Ljava/lang/String; = "ar"

.field public static final ISO639_HEBREW:Ljava/lang/String; = "he"

.field public static final ISO639_HEBREW_FORMER:Ljava/lang/String; = "iw"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO639_PERSIAN:Ljava/lang/String; = "fa"

.field public static final ISO639_URDU:Ljava/lang/String; = "ur"

.field public static final ISO639_YIDDISH:Ljava/lang/String; = "yi"

.field public static final ISO639_YIDDISH_FORMER:Ljava/lang/String; = "ji"

.field public static final LRE:C = '\u202a'

.field public static final LRM:C = '\u200e'

.field public static final LRO:C = '\u202d'

.field public static final LTR:C = '\u200e'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PDF:C = '\u202c'

.field public static final RLE:C = '\u202b'

.field public static final RLM:C = '\u200f'

.field public static final RLO:C = '\u202e'

.field public static final RTL:C = '\u200f'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/text/Semitic;->sLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasArabic(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 229
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 235
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 230
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_1
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/text/Semitic;->isArabic(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    const/4 v2, 0x1

    goto :goto_1

    .line 229
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hasDirectionChanged(Landroid/content/res/Configuration;)Z
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 318
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/samsung/android/text/Semitic;->hasDirectionChanged(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static hasDirectionChanged(Ljava/util/Locale;)Z
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 305
    sget-object v1, Lcom/samsung/android/text/Semitic;->sLocale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/samsung/android/text/Semitic;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v1

    invoke-static {p0}, Lcom/samsung/android/text/Semitic;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v2

    xor-int v0, v1, v2

    .line 306
    .local v0, "result":Z
    sput-object p0, Lcom/samsung/android/text/Semitic;->sLocale:Ljava/util/Locale;

    .line 307
    return v0
.end method

.method public static hasHebrew(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 246
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 248
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 254
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 249
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_1
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/text/Semitic;->isHebrew(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    const/4 v2, 0x1

    goto :goto_1

    .line 248
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isArabic(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 157
    invoke-static {p0}, Lcom/samsung/android/text/Semitic;->isArabic(I)Z

    move-result v0

    return v0
.end method

.method public static isArabic(I)Z
    .locals 3
    .param p0, "codePoint"    # I

    .prologue
    const/4 v1, 0x1

    .line 168
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 169
    .local v0, "block":Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v1

    .line 172
    :cond_1
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v2, :cond_0

    .line 175
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v2, :cond_0

    .line 179
    const/16 v2, 0x750

    if-lt p0, v2, :cond_2

    const/16 v2, 0x77f

    if-le p0, v2, :cond_0

    .line 183
    :cond_2
    const v2, 0x10a60

    if-lt p0, v2, :cond_3

    const v2, 0x10a7f

    if-le p0, v2, :cond_0

    .line 186
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCharRTL(I)Z
    .locals 3
    .param p0, "c"    # I

    .prologue
    const/4 v1, 0x1

    .line 290
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    .line 291
    .local v0, "directionality":B
    if-eq v0, v1, :cond_0

    .line 292
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 293
    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    .line 294
    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    .line 291
    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public static isHebrew(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 197
    invoke-static {p0}, Lcom/samsung/android/text/Semitic;->isHebrew(I)Z

    move-result v0

    return v0
.end method

.method public static isHebrew(I)Z
    .locals 3
    .param p0, "codePoint"    # I

    .prologue
    const/4 v1, 0x1

    .line 208
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 209
    .local v0, "block":Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HEBREW:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v1

    .line 213
    :cond_1
    const v2, 0xfb1d

    if-lt p0, v2, :cond_2

    const v2, 0xfb4f

    if-le p0, v2, :cond_0

    .line 216
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLocaleRTL()Z
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/text/Semitic;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static isLocaleRTL(Ljava/util/Locale;)Z
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "iso639":Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const-string v1, "he"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const-string v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const-string v1, "yi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    const-string v1, "iw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    const-string v1, "ji"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isTextRTL(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    .line 265
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 266
    invoke-static {}, Lcom/samsung/android/text/Semitic;->isLocaleRTL()Z

    move-result v4

    .line 276
    :cond_0
    :goto_0
    return v4

    .line 268
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 269
    .local v3, "len":I
    const/4 v2, 0x0

    .line 270
    .local v2, "i":I
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 271
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 272
    .local v1, "directionality":B
    :goto_1
    const/16 v5, 0xd

    if-ne v1, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_3

    .line 276
    :cond_2
    if-eq v1, v4, :cond_0

    .line 277
    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    .line 278
    const/16 v5, 0x10

    if-eq v1, v5, :cond_0

    .line 279
    const/16 v5, 0x11

    if-eq v1, v5, :cond_0

    .line 276
    const/4 v4, 0x0

    goto :goto_0

    .line 273
    :cond_3
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 274
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    goto :goto_1
.end method
