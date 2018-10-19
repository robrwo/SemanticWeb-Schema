use utf8;

package SemanticWeb::Schema::GovernmentOffice;

# ABSTRACT: A government office&#x2014;for example

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'GovernmentOffice';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=encoding utf8

=head1 DESCRIPTION

A government office&#x2014;for example, an IRS or DMV office.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
