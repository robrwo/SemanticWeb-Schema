use utf8;

package SemanticWeb::Schema::titleEIDR;

# ABSTRACT: An [EIDR](https://eidr

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'titleEIDR';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An L<EIDR|https://eidr.org/> (Entertainment Identifier Registry) [[identifier]] representing at the most general/abstract level, a work of film or television.

For example, the motion picture known as "Ghostbusters" has a titleEIDR of  "10.5240/7EC7-228A-510A-053E-CBB8-J". This title (or work) may have several variants, which EIDR calls "edits". See [[editEIDR]].

Since schema.org types like L<SemanticWeb::Schema::Movie>, L<SemanticWeb::Schema::TVEpisode>, L<SemanticWeb::Schema::TVSeason>, and L<SemanticWeb::Schema::TVSeries> can be used for both works and their multiple expressions, it is possible to use [[titleEIDR]] alone (for a general description), or alongside [[editEIDR]] for a more edit-specific description.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
