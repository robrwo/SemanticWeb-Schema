use utf8;

package SemanticWeb::Schema::additionalName;

# ABSTRACT: An additional name for a Person

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'additionalName';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An additional name for a Person, can be used for a middle name.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
