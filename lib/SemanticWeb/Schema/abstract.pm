use utf8;

package SemanticWeb::Schema::abstract;

# ABSTRACT: An abstract is a short description that summarizes a [[CreativeWork]].

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'abstract';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An abstract is a short description that summarizes a L<SemanticWeb::Schema::CreativeWork>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
