use utf8;

package SemanticWeb::Schema::nonprofitStatus;

# ABSTRACT: nonprofitStatus indicates the legal status of a non-profit organization in its primary place of business.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'nonprofitStatus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

nonprofitStatus indicates the legal status of a non-profit organization in
its primary place of business.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
