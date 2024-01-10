use utf8;

package SemanticWeb::Schema::coverageStartTime;

# ABSTRACT: The time when the live blog will begin covering the Event

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'coverageStartTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The time when the live blog will begin covering the Event. Note that
coverage may begin before the Event's start time. The LiveBlogPosting may
also be created before coverage begins.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
