use utf8;

package SemanticWeb::Schema::givenName;

# ABSTRACT: Given name

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'givenName';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Given name. In the U.S., the first name of a Person.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
