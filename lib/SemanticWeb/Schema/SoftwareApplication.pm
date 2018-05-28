package SemanticWeb::Schema::SoftwareApplication;

# ABSTRACT: A software application.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'SoftwareApplication';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A software application.




=head1 ATTRIBUTES


=head2 C<application_category>

C<applicationCategory>

Type of software application, e.g. 'Game, Multimedia'.


A application_category should be one of the following types:

=over

=item C<Str>

=back

=cut

has application_category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'applicationCategory',
    json_ld_serializer => \&_serialize_application_category,
);

sub _serialize_application_category { $_[0]->_serializer('application_category') }


=head2 C<application_sub_category>

C<applicationSubCategory>

Subcategory of the application, e.g. 'Arcade Game'.


A application_sub_category should be one of the following types:

=over

=item C<Str>

=back

=cut

has application_sub_category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'applicationSubCategory',
    json_ld_serializer => \&_serialize_application_sub_category,
);

sub _serialize_application_sub_category { $_[0]->_serializer('application_sub_category') }


=head2 C<application_suite>

C<applicationSuite>

The name of the application suite to which the application belongs (e.g.
Excel belongs to Office).


A application_suite should be one of the following types:

=over

=item C<Str>

=back

=cut

has application_suite => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'applicationSuite',
    json_ld_serializer => \&_serialize_application_suite,
);

sub _serialize_application_suite { $_[0]->_serializer('application_suite') }


=head2 C<available_on_device>

C<availableOnDevice>

Device required to run the application. Used in cases where a specific
make/model is required to run the application.


A available_on_device should be one of the following types:

=over

=item C<Str>

=back

=cut

has available_on_device => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'availableOnDevice',
    json_ld_serializer => \&_serialize_available_on_device,
);

sub _serialize_available_on_device { $_[0]->_serializer('available_on_device') }


=head2 C<countries_not_supported>

C<countriesNotSupported>

Countries for which the application is not supported. You can also provide
the two-letter ISO 3166-1 alpha-2 country code.


A countries_not_supported should be one of the following types:

=over

=item C<Str>

=back

=cut

has countries_not_supported => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'countriesNotSupported',
    json_ld_serializer => \&_serialize_countries_not_supported,
);

sub _serialize_countries_not_supported { $_[0]->_serializer('countries_not_supported') }


=head2 C<countries_supported>

C<countriesSupported>

Countries for which the application is supported. You can also provide the
two-letter ISO 3166-1 alpha-2 country code.


A countries_supported should be one of the following types:

=over

=item C<Str>

=back

=cut

has countries_supported => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'countriesSupported',
    json_ld_serializer => \&_serialize_countries_supported,
);

sub _serialize_countries_supported { $_[0]->_serializer('countries_supported') }


=head2 C<device>



Device required to run the application. Used in cases where a specific
make/model is required to run the application.


A device should be one of the following types:

=over

=item C<Str>

=back

=cut

has device => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'device',
    json_ld_serializer => \&_serialize_device,
);

sub _serialize_device { $_[0]->_serializer('device') }


=head2 C<download_url>

C<downloadUrl>

If the file can be downloaded, URL to download the binary.


A download_url should be one of the following types:

=over

=item C<Str>

=back

=cut

has download_url => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'downloadUrl',
    json_ld_serializer => \&_serialize_download_url,
);

sub _serialize_download_url { $_[0]->_serializer('download_url') }


=head2 C<feature_list>

C<featureList>

Features or modules provided by this application (and possibly required by
other applications).


A feature_list should be one of the following types:

=over

=item C<Str>

=back

=cut

has feature_list => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'featureList',
    json_ld_serializer => \&_serialize_feature_list,
);

sub _serialize_feature_list { $_[0]->_serializer('feature_list') }


=head2 C<file_size>

C<fileSize>

Size of the application / package (e.g. 18MB). In the absence of a unit
(MB, KB etc.), KB will be assumed.


A file_size should be one of the following types:

=over

=item C<Str>

=back

=cut

has file_size => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'fileSize',
    json_ld_serializer => \&_serialize_file_size,
);

sub _serialize_file_size { $_[0]->_serializer('file_size') }


=head2 C<install_url>

C<installUrl>

URL at which the app may be installed, if different from the URL of the
item.


A install_url should be one of the following types:

=over

=item C<Str>

=back

=cut

has install_url => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'installUrl',
    json_ld_serializer => \&_serialize_install_url,
);

sub _serialize_install_url { $_[0]->_serializer('install_url') }


=head2 C<memory_requirements>

C<memoryRequirements>

Minimum memory requirements.


A memory_requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has memory_requirements => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'memoryRequirements',
    json_ld_serializer => \&_serialize_memory_requirements,
);

sub _serialize_memory_requirements { $_[0]->_serializer('memory_requirements') }


=head2 C<operating_system>

C<operatingSystem>

Operating systems supported (Windows 7, OSX 10.6, Android 1.6).


A operating_system should be one of the following types:

=over

=item C<Str>

=back

=cut

has operating_system => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'operatingSystem',
    json_ld_serializer => \&_serialize_operating_system,
);

sub _serialize_operating_system { $_[0]->_serializer('operating_system') }


=head2 C<permissions>



Permission(s) required to run the app (for example, a mobile app may
require full internet access or may run only on wifi).


A permissions should be one of the following types:

=over

=item C<Str>

=back

=cut

has permissions => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'permissions',
    json_ld_serializer => \&_serialize_permissions,
);

sub _serialize_permissions { $_[0]->_serializer('permissions') }


=head2 C<processor_requirements>

C<processorRequirements>

Processor architecture required to run the application (e.g. IA64).


A processor_requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has processor_requirements => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'processorRequirements',
    json_ld_serializer => \&_serialize_processor_requirements,
);

sub _serialize_processor_requirements { $_[0]->_serializer('processor_requirements') }


=head2 C<release_notes>

C<releaseNotes>

Description of what changed in this version.


A release_notes should be one of the following types:

=over

=item C<Str>

=back

=cut

has release_notes => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'releaseNotes',
    json_ld_serializer => \&_serialize_release_notes,
);

sub _serialize_release_notes { $_[0]->_serializer('release_notes') }


=head2 C<requirements>



Component dependency requirements for application. This includes runtime
environments and shared libraries that are not included in the application
distribution package, but required to run the application (Examples:
DirectX, Java or .NET runtime).


A requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has requirements => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'requirements',
    json_ld_serializer => \&_serialize_requirements,
);

sub _serialize_requirements { $_[0]->_serializer('requirements') }


=head2 C<screenshot>



A link to a screenshot image of the app.


A screenshot should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=item C<Str>

=back

=cut

has screenshot => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'screenshot',
    json_ld_serializer => \&_serialize_screenshot,
);

sub _serialize_screenshot { $_[0]->_serializer('screenshot') }


=head2 C<software_add_on>

C<softwareAddOn>

Additional content for a software application.


A software_add_on should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SoftwareApplication']>

=back

=cut

has software_add_on => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'softwareAddOn',
    json_ld_serializer => \&_serialize_software_add_on,
);

sub _serialize_software_add_on { $_[0]->_serializer('software_add_on') }


=head2 C<software_help>

C<softwareHelp>

Software application help.


A software_help should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=cut

has software_help => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'softwareHelp',
    json_ld_serializer => \&_serialize_software_help,
);

sub _serialize_software_help { $_[0]->_serializer('software_help') }


=head2 C<software_requirements>

C<softwareRequirements>

Component dependency requirements for application. This includes runtime
environments and shared libraries that are not included in the application
distribution package, but required to run the application (Examples:
DirectX, Java or .NET runtime).


A software_requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has software_requirements => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'softwareRequirements',
    json_ld_serializer => \&_serialize_software_requirements,
);

sub _serialize_software_requirements { $_[0]->_serializer('software_requirements') }


=head2 C<software_version>

C<softwareVersion>

Version of the software instance.


A software_version should be one of the following types:

=over

=item C<Str>

=back

=cut

has software_version => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'softwareVersion',
    json_ld_serializer => \&_serialize_software_version,
);

sub _serialize_software_version { $_[0]->_serializer('software_version') }


=head2 C<storage_requirements>

C<storageRequirements>

Storage requirements (free space required).


A storage_requirements should be one of the following types:

=over

=item C<Str>

=back

=cut

has storage_requirements => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'storageRequirements',
    json_ld_serializer => \&_serialize_storage_requirements,
);

sub _serialize_storage_requirements { $_[0]->_serializer('storage_requirements') }


=head2 C<supporting_data>

C<supportingData>

Supporting data for a SoftwareApplication.


A supporting_data should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DataFeed']>

=back

=cut

has supporting_data => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'supportingData',
    json_ld_serializer => \&_serialize_supporting_data,
);

sub _serialize_supporting_data { $_[0]->_serializer('supporting_data') }




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
