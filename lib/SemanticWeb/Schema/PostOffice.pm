use utf8;

package SemanticWeb::Schema::PostOffice;

# ABSTRACT: A post office.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::GovernmentOffice /;


use MooX::JSON_LD 'PostOffice';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

A post office.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::GovernmentOffice>

=cut

1;
