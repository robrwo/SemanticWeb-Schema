use utf8;

package SemanticWeb::Schema::homeLocation;

# ABSTRACT: A contact location for a person's residence.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'homeLocation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A contact location for a person's residence.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
