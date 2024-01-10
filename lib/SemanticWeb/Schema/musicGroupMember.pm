use utf8;

package SemanticWeb::Schema::musicGroupMember;

# ABSTRACT: A member of a music group—for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'musicGroupMember';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A member of a music group&#x2014;for example, John, Paul, George, or Ringo.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
