use utf8;

package SemanticWeb::Schema::SexualContentConsideration;

# ABSTRACT: The item contains sexually oriented content such as nudity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'SexualContentConsideration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The item contains sexually oriented content such as nudity, suggestive or
explicit material, or related online services, or is intended to enhance
sexual activity. Examples: Erotic videos or magazine, sexual enhancement
devices, sex toys.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
