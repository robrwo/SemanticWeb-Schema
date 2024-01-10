use utf8;

package SemanticWeb::Schema::editEIDR;

# ABSTRACT: An [EIDR](https://eidr

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'editEIDR';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An L<EIDR|https://eidr.org/> (Entertainment Identifier Registry) [[identifier]] representing a specific edit / edition for a work of film or television.

For example, the motion picture known as "Ghostbusters" whose [[titleEIDR]] is "10.5240/7EC7-228A-510A-053E-CBB8-J" has several edits, e.g. "10.5240/1F2A-E1C5-680A-14C6-E76B-I" and "10.5240/8A35-3BEE-6497-5D12-9E4F-3".

Since schema.org types like L<SemanticWeb::Schema::Movie> and L<SemanticWeb::Schema::TVEpisode> can be used for both works and their multiple expressions, it is possible to use [[titleEIDR]] alone (for a general description), or alongside [[editEIDR]] for a more edit-specific description.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
